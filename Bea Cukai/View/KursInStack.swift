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
    
    var typeSide:Side = .rightSide

    override func awakeFromNib() {
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setDataForView(_ data: Kurs) {

        let model = KursViewModel(kurs:data)
    
        topLabel.text = model.inRupiah()
        centerLabel.text = model.kurs.symbol
        bottomLabel.text = model.kurs.currencyText
        lineView.isHidden = lineViewConfig(typeSide)
    
    }
    
}

extension KursInStack {
    
    func lineViewConfig(_ type:Side) -> Bool {
        switch type {
        case .leftSide:
            return false
        default:
            return true
        }
    }
}
