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
        return [
                "EUR":"€",
                "GBP":"£",
                "JPY":"¥",
                "CNY":"¥",
                "SGD":"$",
                "MYR":"RM",
                "HKD":"$",
                "IDR":"Rp",
                "AUD":"$",]
    }()
    
    let dataCountry:[String:String] = {
        return [
                "EUR":"Euro",
                "GBP":"United Kingdom",
                "JPY":"Japan Yen",
                "CNY":"Chinese Yuan",
                "SGD":"Singapore Dollar",
                "MYR":"Malaysia Ringgit",
                "HKD":"Hongkong Dollar",
                "IDR":"Indonesia Rupiah",
                "AUD":"Australian Dollar"]
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
