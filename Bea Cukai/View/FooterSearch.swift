//
//  FooterSearch.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 10/4/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

protocol FooterSearchDelegate: class {
    func buttonAction(_ sender:Int)
}


class FooterSearch: UIView {

    weak var delegate:FooterSearchDelegate?
    
    @IBOutlet var btn: ButtonCalculate!
    
    override func awakeFromNib() {
        btn.rounded(5)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }

    @IBAction func btnAction(_ sender: UIButton) {
        delegate?.buttonAction(sender.tag)
    }
}

