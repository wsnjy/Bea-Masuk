//
//  BottomImage.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 10/12/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

class BottomImage: UIImageView {

    init(){
        super.init(image: UIImage(named: "bg_bottom"))
        bottomImageConfig()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func bottomImageConfig() {
        
    self.frame = CGRect(x: 0,
                        y: self.frame.size.height - self.frame.size.height,
                        width: self.frame.size.width,
                        height: self.frame.size.height)
    }
    
}
