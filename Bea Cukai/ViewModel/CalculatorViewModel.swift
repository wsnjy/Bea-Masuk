//
//  TitleField.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 9/14/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import Foundation


struct CalculatorViewModel {
    
    let topTitle:Array = ["FOB Barang ($)",
                    "Kurs ($)",
                    "Tarif Bea Masuk (%)",
                    "Tarif PPN (%)",
                    "Tarif PPN BM (%)",
                    "Tarif PPh pasal 22 (%)    ",
                    "Pembebasan FOB",
                    "Asuransi ($)",
                    "Freight ($)"]
    
    let placeholder:Array = ["250",
                             "13000",
                             "10",
                             "10",
                             "10",
                             "Pilih",
                             "Pilih",
                             "10",
                             "10"]
    
    let dummyData:[Decimal] = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
}
