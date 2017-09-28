//
//  TitleField.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 9/14/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import Foundation


struct CalculatorViewModel {
    
    let topTitle:Array = ["FOB ($)",
                    "Kurs ($1 USD)",
                    "Tarif Bea Masuk (%)",
                    "Tarif PPN (%)",
                    "Tarif PPN BM (%)",
                    "Tarif PPh pasal 22 (%)",
                    "Pembebasan FOB ($ USD)",
                    "Asuransi ($ USD)",
                    "Freight ($ USD)"]
    
    let placeholder:Array = ["Masukan nilai FOB barang",
                             "13000",
                             "Tap untuk mengetahui tarif bea masuk",
                             "",
                             "",
                             "Pilih",
                             "Pilih",
                             "",
                             ""]
    
    let dummyData:[Decimal] = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
}
