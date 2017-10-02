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

class CalculatorCell: UITableViewCell {
    
    @IBOutlet weak var txtLabel: UILabel!
    @IBOutlet weak var txtPercent: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var txtLabelCenter: NSLayoutConstraint!
    @IBOutlet weak var widthPercentage: NSLayoutConstraint!

    var condition:cellCondition = cellCondition.calculator
    
    let cellConfigData:[[String:String]] = {
        return CalculatorViewModel().cellConfigData
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setDataCell(indexPath: IndexPath, delegate: UITextFieldDelegate) -> Void {
        
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
        
        txtLabel.text = topTitle(indexPath)
        textField.tag = indexPath.row
        textField.delegate = delegate

    }
    
    func calculatorConfig(_ indexPath:IndexPath) {
        textField.placeholder = placeholderText(indexPath)
        textField.isEnabled = true
        setAccessory(indexPath)
    }

    func cariConfig(_ indexPath:IndexPath) {
        textField.placeholder = placeholderText(indexPath)
        textField.isEnabled = true
        textField.keyboardType = .default
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
        return CalculatorViewModel().placeholderText(indexPath)
    }
    
    func topTitle(_ indexPath: IndexPath) -> String {
        return CalculatorViewModel().topTitle(indexPath)
    }

    func percentage(_ indexPath: IndexPath) -> String {
        return CalculatorViewModel().percentage(indexPath)
    }
    
    func setAccessory(_ indexPath: IndexPath) -> Void {
        
        guard indexPath.row == 2 else {
            return
        }
        accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        widthPercentage.constant = 0
    }

    
}
