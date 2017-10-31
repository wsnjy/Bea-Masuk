//
//  Pengaduan.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 10/23/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

protocol PengaduanDelegate {
    
    func pengaduanAction(_ type:pengaduanCase)
    
}

enum pengaduanCase{
    case pengaduanTelepon
    case pengaduanSms
    case pengaduanEmail
    case pengaduanTicketing
}

class Pengaduan: UIView, ViewShadow{

    var delegate:PengaduanDelegate?
    
    @IBOutlet weak var viewTelepon: ViewInStack!
    @IBOutlet weak var viewEmail: ViewInStack!
    @IBOutlet weak var viewSms: ViewInStack!
    @IBOutlet weak var viewOnline: ViewInStack!
    
    
    func setShadowForView() {
        
        viewTelepon.addShadow()
        viewEmail.addShadow()
        viewSms.addShadow()
        viewOnline.addShadow()        
    }
    
    @IBAction func pengaduanAction(_ sender: UIButton) {
        
        var type:pengaduanCase?
        
        switch sender.tag {
        case 0:
            type = .pengaduanTelepon
        case 1:
            type = .pengaduanSms
        case 2:
            type = .pengaduanEmail
        case 3:
            type = .pengaduanTicketing
        default: break
            
        }
        delegate?.pengaduanAction(type!)
        
    }
    
}
