//
//  BottomBackgrund.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 9/30/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

protocol BottomBackground {
    func showBottomBackground(_ is_showing: Bool)
}

extension BottomBackground where Self : UIViewController{
    
    func showBottomBackground(_ is_showing: Bool = true) {
        
        let imageBottom:UIImageView = {
            return UIImageView.init(image: UIImage(named: "bg_bottom"))
        }()

        imageBottom.frame = CGRect(x: 0,
                                   y: self.view.frame.size.height - imageBottom.frame.size.height,
                                   width: self.view.frame.size.width,
                                   height: imageBottom.frame.size.height)
        
        view.addSubview(imageBottom)
    }
    
}
