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
    case tarif
    case result
}

class CalculatorCell: UITableViewCell {
    
    @IBOutlet weak var txtLabel: UILabel!
    @IBOutlet weak var txtPercent: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var txtLabelCenter: NSLayoutConstraint!
    
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
            textField.placeholder = placeholderText(indexPath)
            textField.isEnabled = true
        case .tarif:
            txtPercent.isHidden = false
        case .result:
            txtLabelCenter.isActive = true
        }
        
        txtLabel.text = topTitle(indexPath)
        textField.tag = indexPath.row
        textField.delegate = delegate

        //            accessoryType = UITableViewCellAccessoryType.disclosureIndicator
    }
    
    
    func placeholderText(_ indexPath:IndexPath) -> String {
        return CalculatorViewModel().placeholderText(indexPath)
    }
    
    func topTitle(_ indexPath: IndexPath) -> String {
        return CalculatorViewModel().topTitle(indexPath)
    }

}
