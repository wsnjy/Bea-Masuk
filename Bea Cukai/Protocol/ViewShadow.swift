//
//  ViewShadow.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 9/23/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

protocol ViewShadow {
    
    func addShadow ()
    func addShadowAndRounded(_ round: CGFloat)
    func rounded (_ round: CGFloat)
    func addBorder(_ width:CGFloat,_ color:UIColor)

}

extension ViewShadow where Self : UIView {
    
    func addShadow () {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.05
        layer.shadowRadius = 0.5
        layer.shadowOffset = CGSize(width: 1, height: 1)
    }
    
    func rounded(_ round: CGFloat) -> Void {
        layer.cornerRadius = round
    }
    
    func addShadowAndRounded(_ round: CGFloat) -> Void {
        addShadow()
        rounded(round)
    }
    
    func addBorder(_ width:CGFloat,_ color:UIColor){
        layer.borderColor = color.cgColor
        layer.borderWidth = width
    }

    
}
