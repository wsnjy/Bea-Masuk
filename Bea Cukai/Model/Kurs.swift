//
//  Kurs.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 9/24/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import Foundation

enum typeRates:String{
    case USA        = "USD"
    case EURO       = "EUR"
    case Britain    = "GBP"
    case Japan      = "JPY"
    case China      = "CNY"
    case Singapore  = "SGD"
    case Malaysia   = "MYR"
    case Hongkong   = "HKD"
    case Indonesia  = "IDR"
}

struct Kurs {
    var idCurrency:String
    var valueInRupiah:Decimal
    var symbol: String
    var currencyText: String
}

extension Kurs {
    
    static func configRates(data:[String:String]) -> [String:Kurs]{
        
        var allRates:[String:Kurs]?
        
        for (key,value) in data {
            allRates![key] = setDataKurs(key, Decimal(string:value)!)
        }
        
        return allRates!

    }

    static func setDataKurs(_ id:String,_ value:Decimal) -> Kurs {
        return Kurs(idCurrency: id,
                    valueInRupiah:value,
                    symbol:"\(symbolCurrency(id))",
                    currencyText:"\(countryCurrency(id))")
    }
    
    static func symbolCurrency(_ idCurrency:String) -> String {
        return Symbol().currencySymbol(idCurrency)
    }
    
    static func countryCurrency(_ idCurrency:String) -> String {
        return Symbol().currencyCountry(idCurrency)
    }
    
    func convertToRupiah(_ value:Decimal) -> String{
        let userDefault = UserDefaults()
        return userDefault.string(forKey: "USD")!
    }
    
}
