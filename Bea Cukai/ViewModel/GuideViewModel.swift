//
//  GuideViewModel.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 10/23/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

struct GuideViewModel {
    
    var type:GuideType
    
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
        }
        
        return titles
    }

}
