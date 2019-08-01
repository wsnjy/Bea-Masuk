//
//  HomeViewModel.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 9/24/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

struct HomeViewModel {
    var kurs:[String:Kurs] = [:]
}

extension HomeViewModel {
    
    func currency(_ type:typeRates) -> String {
        let currency = kurs[type.rawValue]?.valueInRupiah
        return currencyLabel(currency!)
    }
    
    func currencyLabel(_ currency:Decimal) -> String{
        return "IDR \(formatter)"
    }
    
    func symbol(_ type:typeRates) -> String {
        let symbol = kurs[type.rawValue]?.symbol
        return "\(symbol!)1 \(type.rawValue)"
    }
}
