//
//  Kurs.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 9/24/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import Foundation

struct Kurs {
    var currency:String
    var inRupiah:Decimal
}

extension Kurs {
    
    func setDataKurs(_ data:[String:String]) -> Kurs {
        return Kurs(currency:"", inRupiah:0)
    }
    
}
