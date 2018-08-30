//
//  UILabel+Height.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 9/26/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

extension UILabel{
    
    func textHeight(_ text: String,_ font:UIFont,_ maxWidth:CGFloat) -> CGFloat {

        let rect: CGRect = text.boundingRect(with: CGSize(width: maxWidth,height: CGFloat.greatestFiniteMagnitude), options: ([.usesLineFragmentOrigin, .usesFontLeading]), attributes: [NSAttributedStringKey.font: font], context: nil)
        
        let textHeight: CGFloat = rect.size.height
        
        return textHeight
        
    }
    
    func addTextSpacing() {
        if let textString = text, textString.count > 0 {
            let attributedString = NSMutableAttributedString(string: textString)
            attributedString.addAttribute(NSAttributedStringKey.kern, value: 2.5, range: NSRange(location: 0, length: attributedString.length - 1))
            attributedText = attributedString
        }
    }

    
}

