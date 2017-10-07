//
//  Symbol.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 10/7/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import Foundation

struct Symbol {
    
    let dataSymbol:[String:String] = {
        return ["USD":"$",
                "EUR":"€",
                "GBP":"£",
                "JPY":"¥",
                "CNY":"¥",
                "SGD":"$",
                "SAR":"﷼",
                "HKD":"$",
                "IDR":"Rp"]
    }()
    
    let dataCountry:[String:String] = {
        return ["USD":"United States Dollar",
                "EUR":"Euro Member Countries",
                "GBP":"United Kingdom Pound",
                "JPY":"Japan Yen",
                "CNY":"Chinese Yuan Renmibi",
                "SGD":"Singapore Dollar",
                "SAR":"Saudi Arabia Riyal",
                "HKD":"Hongkong Dollar",
                "IDR":"Indonesia Rupiah"]
    }()

    
}

extension Symbol {
    
    func currencySymbol(_ currency:String) -> String {
        return dataSymbol[currency]!
    }
    
    func currencyCountry(_ currency:String) -> String {
        return dataCountry[currency]!
    }
    
}
