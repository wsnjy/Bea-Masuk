//
//  TitleField.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 9/14/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import Foundation


struct CalculatorViewModel {
    
    let configCalculator:Array = [
                                    ["top_title":"FOB ($)","placeholder":"Masukan nilai FOB barang"],
                                    ["top_title":"Kurs ($1 USD)","placeholder":""],
                                    ["top_title":"Tarif Bea Masuk (%)","placeholder":"Tap untuk mengetahui tarif bea masuk"],
                                    ["top_title":"Tarif PPN (%)","placeholder":""],
                                    ["top_title":"Tarif PPN BM (%)","placeholder":""],
                                    ["top_title":"Tarif PPh pasal 22 (%)","placeholder":"Pilih"],
                                    ["top_title":"Pembebasan FOB ($ USD)","placeholder":"Pilih"],
                                    ["top_title":"Asuransi ($ USD)","placeholder":""],
                                    ["top_title":"Freight ($ USD)","placeholder":""]
    ]
    
    let configSearch:Array = [
        [
            ["top_title":"Metode Pencarian","placeholder":"pilih"],
            ["top_title":"Kata Kunci atau HS Code","placeholder":"Masukan Parameter Pencarian"],
            [:], // empty dictionary for button cari
        ],
        [
            ["top_title":"Input Manual (%)","placeholder":"Masukan nilai tarif bea masuk"],
            [:], // empty dictionary for button simpan
        ]
    ]

    
//    let cellConfigData:Array = [
//        ["top_title":"Metode Pencarian","placeholder":"pilih"],
//        ["top_title":"Kata Kunci atau HS Code","placeholder":"Masukan Parameter Pencarian"],
//        ["top_title":"Input Manual (%)","placeholder":"Masukan nilai tarif bea masuk"],
//    ]

//    let cellConfigData:Array = [
//        ["top_title":"Mobil mewah","placeholder":"Kopra", "percentage":"10"],
//        ["top_title":"Mobil mewah","placeholder":"Kopra", "percentage":"10"],
//        ["top_title":"Mobil mewah","placeholder":"Kopra", "percentage":"10"],
//        ]

    
    let dummyData:[Decimal] = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
}

extension CalculatorViewModel {
    
    func placeholderText(_ indexPath:IndexPath, _ caseCondition:cellCondition) -> String {
        let dict = getDictionary(indexPath, caseCondition)
        return dict["placeholder"]!
    }
    
    func topTitle(_ indexPath: IndexPath, _ caseCondition:cellCondition) -> String {
        let dict = getDictionary(indexPath, caseCondition)
        return dict["top_title"]!
    }

    func percentage(_ indexPath: IndexPath, _ caseCondition:cellCondition) -> String {
        let dict = getDictionary(indexPath, caseCondition)
        return "\(dict["percentage"]!)%"
    }

    func rowCount() -> Int {
        return configCalculator.count
    }
    
    func getDictionary(_ indexPath: IndexPath, _ caseCondition:cellCondition) -> [String:String] {
        
        switch caseCondition {
        case .calculator:
            return configCalculator[indexPath.row]
        case .cari:
            return configSearch[indexPath.section][indexPath.row]
        case .tarif:
            return [:]
        case .result:
            return [:]
        }
        
    }
    
}


