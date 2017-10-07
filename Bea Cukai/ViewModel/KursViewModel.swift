//
//  KursViewModel.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 10/7/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import Foundation

struct KursViewModel {
    var kurs:Kurs
}

extension KursViewModel {
    
    func inRupiah() -> String {
        return "IDR \(kurs.valueInRupiah)"
    }
    

    
}
