//
//  CaraHitungCell.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 10/24/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

class CaraHitungCell: UITableViewCell {

    @IBOutlet weak var textContent: UITextView!
    
    let viewModel = CaraHitungViewModel()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        backgroundBeaColor()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configContent(_ indexPath:IndexPath){
        textContent.text = viewModel.caraHitungModel[indexPath.row]
        separatorInset = UIEdgeInsetsMake(0, 1000, 0, 0)
    }
    
}
