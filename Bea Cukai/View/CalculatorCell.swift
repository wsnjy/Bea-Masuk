//
//  CalculatorCell.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 9/11/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

enum cellCondition {
    case calculator
    case cari
    case tarif
    case result
}

class CalculatorCell: UITableViewCell, BeaPickerDelegate{
    
    @IBOutlet weak var txtLabel: UILabel!
    @IBOutlet weak var txtPercent: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var txtLabelCenter: NSLayoutConstraint!
    @IBOutlet weak var widthPercentage: NSLayoutConstraint!

    var condition:cellCondition = cellCondition.calculator

    let pickerView = BeaPickerView.loadFromXib() as BeaPickerView
    let calculatorViewModel = CalculatorViewModel()
    let cellConfigData:[[String:String]] = {
        return CalculatorViewModel().configCalculator
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.backgroundBeaColor()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setDataCell(indexPath: IndexPath, delegate: UITextFieldDelegate) -> Void {

        textField.tag = indexPath.row
        txtLabel.text = topTitle(indexPath)
        textField.delegate = delegate
        selectionStyle =  .none

        switch condition {
        case .calculator:
            calculatorConfig(indexPath)
        case .cari:
            cariConfig(indexPath)
        case .tarif:
            tarifConfig(indexPath)
        case .result:
            resultConfig(indexPath)
        }
        
    }
    
    func calculatorConfig(_ indexPath:IndexPath) {
        textField.placeholder = placeholderText(indexPath)
        textField.isEnabled = true
        setAccessory(indexPath)
        
        pickerView.delegate = self
        
        if indexPath.row == 5 || indexPath.row == 6{
            if indexPath.row == 5 {
                pickerView.pickerType = .tarif
            }else{
                pickerView.pickerType = .pembebasan
            }
            textField.inputView = pickerView
        }
        
    }

    func cariConfig(_ indexPath:IndexPath) {
        textField.placeholder = placeholderText(indexPath)
        textField.isEnabled = true
        textField.keyboardType = .default

        if indexPath.section == 0 && indexPath.row == 0 {
            pickerView.pickerType = .search
            pickerView.delegate = self
            textField.inputView = pickerView
        }else if indexPath.section == 1{
            textField.tag = 2
            textField.keyboardType = .numberPad
        }
    }
    
    func tarifConfig(_ indexPath:IndexPath) {
        txtPercent.isHidden = false
        txtPercent.text = percentage(indexPath)
        textField.text = placeholderText(indexPath)
    }

    func resultConfig(_ indexPath:IndexPath) {
        txtLabelCenter.isActive = true
    }

    func placeholderText(_ indexPath:IndexPath) -> String {
        return calculatorViewModel.placeholderText(indexPath, condition)
    }
    
    func topTitle(_ indexPath: IndexPath) -> String {
        return calculatorViewModel.topTitle(indexPath, condition)
    }

    func percentage(_ indexPath: IndexPath) -> String {
        return calculatorViewModel.percentage(indexPath, condition)
    }
    
    func setAccessory(_ indexPath: IndexPath) -> Void {
        
        guard indexPath.row == 2 else { return }
        textField.isEnabled = false
        accessoryType = UITableViewCellAccessoryType.disclosureIndicator
    }
    
    func donePicker() {
        textField.resignFirstResponder()
    }
    
    func addValueToTextField(value: String) {

        if pickerView.pickerType == .search{
            textField.text = value
        }else{
            textField.text = BeaPickerViewModel().valueForTarifOrPembebasan(value)
        }
    }
    
    func setDataTarif(_ indexPath:IndexPath,_ value:Decimal) {
        
        guard indexPath.row == 2 else { return }
        textField.text = String(describing: value)
    }
    
}
