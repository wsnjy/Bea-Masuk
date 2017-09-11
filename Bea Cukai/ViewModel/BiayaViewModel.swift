//
//  BiayaViewModel.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 9/10/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import Foundation

struct BiayaViewModel {
    var biaya:Biaya
}

extension BiayaViewModel {
    
    func totalBeaMasuk() -> Decimal{
        return ((biaya.nilaiBarang - biaya.usd) + biaya.asuransi + biaya.freight) * biaya.kurs * biaya.tarifBeaMasuk
    }
    
    func totalPajakImpor() -> Decimal {
        return (totalBeaMasuk() + (((biaya.nilaiBarang - biaya.usd) + biaya.asuransi + biaya.freight) * biaya.kurs)) * biaya.tarifPDHI
    }
    
    func totalPPN() -> Decimal {
        return ((((biaya.nilaiBarang - biaya.usd) +  biaya.asuransi + biaya.freight) * biaya.kurs) + totalBeaMasuk()) * biaya.PPN
    }
    
    func totalPPH() -> Decimal {
        return ((((biaya.nilaiBarang - biaya.usd) +  biaya.asuransi + biaya.freight) * biaya.kurs) + totalBeaMasuk()) * biaya.PPH
    }
    
    func totalPungutan() -> Decimal {
        print("biaya masuk \(totalBeaMasuk())")
        print("biaya PPN \(totalPPN())")
        print("biaya PPH \(totalPPH())")

        return totalBeaMasuk() + totalPPN() + totalPPH()
    }
    
}
