//
//  Kurs.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 9/24/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import Foundation

struct Kurs {
    var idCurrency:String
    var valueInRupiah:Decimal
    var symbol: String
    var currencyText: String
}

extension Kurs {
    
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
