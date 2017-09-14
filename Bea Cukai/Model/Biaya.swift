//
//  Biaya.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 9/10/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import Foundation

struct Biaya {
    var nilaiBarang:Decimal
    var kurs:Decimal
    var tarifBeaMasuk:Decimal
    var PPN:Decimal
    var PPnBM:Decimal
    var PPh:Decimal
    var pembebasanFOB:Decimal
    var asuransi:Decimal
    var freight:Decimal
}

let topTitle:Array = ["FOB Barang ($)",
                      "Kurs ($)",
                      "Tarif Bea Masuk (%)",
                      "Tarif PPN (%)",
                      "Tarif PPN BM (%)",
                      "NPWP - API",
                      "Pembebasan FOB",
                      "Asuransi ($)",
                      "Freight ($)"]



extension Biaya {
    
    static func dataBiaya(data : [Decimal]) -> Biaya {
        
        return Biaya(nilaiBarang:data[0],
                     kurs:data[1],
                     tarifBeaMasuk:data[2],
                     PPN:data[3],
                     PPnBM:data[4],
                     PPh:data[5],
                     pembebasanFOB:data[6],
                     asuransi:data[7],
                     freight:data[8]
        )
    }
    
    
}


