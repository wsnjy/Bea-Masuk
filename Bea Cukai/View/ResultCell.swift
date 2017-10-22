//
//  ResultCell.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 10/15/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

class ResultCell: UITableViewCell {

    @IBOutlet weak var labelCode: UILabel!
    @IBOutlet weak var labelDescription: UILabel!
    @IBOutlet weak var labelPercent: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
        backgroundBeaColor()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configCell(indexPath:IndexPath, data:[Tarif]){
        
        labelCode.text = ResultViewModel().labelCode(indexPath, data)
        labelDescription.text = data[indexPath.row].description
        labelPercent.text = ResultViewModel().labelPercent(indexPath, data)
        
        labelDescription.topAnchor.constraint(equalTo: labelCode.bottomAnchor, constant: 12).isActive = true
    
    }
    
    func configForBiaya(_ indexPath:IndexPath, _ data:[Decimal])  {
        
        labelCode.text = ResultViewModel().leftLabel(indexPath)
        labelPercent.text = ResultViewModel().rightLabel(data[indexPath.row])
        labelDescription.isHidden = true
        
        labelCode.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        if indexPath.row == 4{
            let font = UIFont(name: "SourceSansPro-SemiBold", size: 12.0)
            let fontPercent = UIFont(name: "SourceSansPro-SemiBold", size: 14.0)

            labelCode.textColor = UIColor.black
            labelCode.font = font
            labelPercent.font = fontPercent
            separatorInset = UIEdgeInsetsMake(0, 1000, 0, 0)
        }else{
            labelCode.font = UIFont(name: "SourceSansPro-Regular", size: 11.0)
        }
        
        
    }
    
}
