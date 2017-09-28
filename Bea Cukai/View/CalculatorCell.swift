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
    
    let titleField:Array = {
        return CalculatorViewModel().topTitle
    }()
    
    let placeholder:Array = {
        return CalculatorViewModel().placeholder
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
            textField.placeholder = placeholder[indexPath.row]
        case .tarif:
            txtPercent.isHidden = false
        case .result:
            txtLabelCenter.isActive = true
        }
        
        txtLabel.text = titleField[indexPath.row]
        textField.tag = indexPath.row
        textField.delegate = delegate

        //            accessoryType = UITableViewCellAccessoryType.disclosureIndicator
    }

}
