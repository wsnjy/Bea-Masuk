//
//  KursInStack.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 10/7/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

class KursInStack: UIView {

    enum Side {
        case leftSide
        case rightSide
    }

    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var centerLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var lineView: UIView!
    
    var typeSide:Side?
    
    override func awakeFromNib() {
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setDataForView(_ data: Kurs,_ type:Side) {
        
        topLabel.text = HomeViewModel().currencyLabel(data.valueInRupiah)
        centerLabel.text = data.symbol
        bottomLabel.text = data.currencyText
        lineView.isHidden = lineViewConfig(type)
    
    }
    
}

extension KursInStack {
    
    func lineViewConfig(_ type:Side) -> Bool {
        switch type {
        case .leftSide:
            return true
        case .rightSide:
            return false
        }
    }
}
