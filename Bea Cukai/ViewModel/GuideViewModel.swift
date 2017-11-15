//
//  GuideViewModel.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 10/23/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

class GuideViewModel {
    
    var type:GuideType
    
    let telpNumber = "tel://+628001003545"
    let number = "+6282130202045"
    let templateSMS = "Dengan ini saya menyampaikan saran dan kritik bahwa..."
    let subjectEmail = "Pengaduan Bea Cukai"
    let templateEmail = "Dengan email saya ingin menyampaikan bahwa "
    let emailAddress = "pengaduan.beacukai@customs.go.id"
    let urlPengaduan = "http://www.beacukai.go.id/pengaduan/rekam.html"
    let emptyFAQ = "Saat ini FAQ masih kosong"

    init(type:GuideType) {
        self.type = type
    }
}

extension GuideViewModel {
    
    func nibName() -> String{
        
        var nibName = ""
        switch type {
        case .developer:
            nibName  = "Developer"
        case .rumus:
            nibName = "RumusBeaMasuk"
        case .pengaduan:
            nibName = "Pengaduan"
        case .faq:
            nibName = "Developer"

        }
        
        return nibName
        
    }
    
    func titles() -> String{
        
        var titles = ""
        
        switch type {
        case .developer:
            titles = "Dev Ninjas"
        case .rumus:
            titles = "Rumus"
        case .pengaduan:
            titles = "Pengaduan"
        case .faq:
            titles = "FAQ"
        }
        
        return titles
    }

}
