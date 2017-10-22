//
//  UIView+Background.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 10/22/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

extension UIView {
    
    func backgroundBeaColor (){        
        backgroundColor = UIColor.init(red: 245/255, green: 249/255, blue: 252/255, alpha: 1)
    }
    
}

extension UIView{
    
    static func loadFromXib<T>(withOwner: Any? = nil, options: [AnyHashable : Any]? = nil) -> T where T: UIView
    {
        let bundle = Bundle(for: self)
        let nib = UINib(nibName: "\(self)", bundle: bundle)
        
        guard let view = nib.instantiate(withOwner: withOwner, options: options).first as? T else {
            fatalError("Could not load view from nib file.")
        }
        return view
    }
}

