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
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configCell(_ indexPath:IndexPath){
        
        labelCode.text = "123"
        labelDescription.text = "Description"
        labelPercent.text = "10%"
        
    }
    
}
