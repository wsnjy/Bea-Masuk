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
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configCell(indexPath:IndexPath, data:[Tarif]){
        
        labelCode.text = ResultViewModel().labelCode(indexPath, data)
        labelDescription.text = data[indexPath.row].description
        labelPercent.text = ResultViewModel().labelPercent(indexPath, data)
        
    }
    
    func configForBiaya(_ indexPath:IndexPath, _ data:[Decimal])  {
        labelCode.text = ResultViewModel().leftLabel(indexPath)
        labelPercent.text = String(describing: data[indexPath.row])
        labelDescription.isHidden = true
    }
    
}
