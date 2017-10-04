//
//  FooterSearch.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 10/4/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

protocol FooterSearchDelegate: class {
    func wedus(_ sender:Int)
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
        delegate?.wedus(sender.tag)
    }
}


extension UIView{
    static func loadFromXib<T>(withOwner: Any? = nil, options: [AnyHashable : Any]? = nil) -> T where T: FooterSearch
    {
        let bundle = Bundle(for: self)
        let nib = UINib(nibName: "\(self)", bundle: bundle)
        
        guard let view = nib.instantiate(withOwner: withOwner, options: options).first as? T else {
            fatalError("Could not load view from nib file.")
        }
        return view
    }
}
