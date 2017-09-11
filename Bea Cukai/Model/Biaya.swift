//
//  Biaya.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 9/10/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import Foundation

struct Biaya {
    var PPH:Decimal
    var PPN:Decimal
    var nilaiBarang:Decimal
    var usd:Decimal
    var asuransi:Decimal
    var freight:Decimal
    var kurs:Decimal
    var tarifBeaMasuk:Decimal
    var tarifPDHI:Decimal
}

extension Biaya {
    
    static func dataBiaya() -> Biaya {
            
        return Biaya(PPH: 0.75,
                     PPN: 01,
                     nilaiBarang: 250,
                     usd: 50,
                     asuransi: 5,
                     freight: 5,
                     kurs: 10000,
                     tarifBeaMasuk: 0,
                     tarifPDHI: 0.1)
    }
    
}


