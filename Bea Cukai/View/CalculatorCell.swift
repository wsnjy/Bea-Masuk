//
//  CalculatorCell.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 9/11/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

class CalculatorCell: UITableViewCell {

    
    @IBOutlet weak var txtLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
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
        
        txtLabel.text = titleField[indexPath.row]
        textField.tag = indexPath.row
        textField.placeholder = placeholder[indexPath.row]
        textField.delegate = delegate
        
    }

}
