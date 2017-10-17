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
        return ((biaya.nilaiBarang - biaya.pembebasanFOB) + biaya.asuransi + biaya.freight) * biaya.kurs * (biaya.tarifBeaMasuk/100)
    }

    func totalPPN() -> Decimal {
        return ((((biaya.nilaiBarang - biaya.pembebasanFOB) +  biaya.asuransi + biaya.freight) * biaya.kurs) + totalBeaMasuk()) * (biaya.PPN/100)
    }
    
    func totalPPH() -> Decimal {
        return ((((biaya.nilaiBarang - biaya.pembebasanFOB) +  biaya.asuransi + biaya.freight) * biaya.kurs) + totalBeaMasuk()) * (biaya.PPh/100)
    }
    
    func totalPungutan() -> Decimal {
        print("data biaya bossss \(biaya)")
        print("biaya masuk \(totalBeaMasuk())")
        print("biaya PPN \(totalPPN())")
        print("biaya PPH \(totalPPH())")

        return totalBeaMasuk() + totalPPN() + totalPPH()
    }
    
}

extension BiayaViewModel {
    
    func leftLabel(_ indexPath:IndexPath) -> String {
        let label = ["Bea Masuk", "PPN", "PPN BM", "PPH Pasal 22", "Total Pungutan"]
        return label[indexPath.row]
    }
    
    func rightLabel(_ indexPath:IndexPath) -> Decimal {
        let cost = [totalBeaMasuk(), totalPPN(), totalPPN(), totalPPH(), totalPungutan()]
        return cost[indexPath.row]
    }
    
}



/*
 
 Bea Masuk: (($250-$50)+5+5) x Rp.10.000 x 0% = Rp. 0
 PPN : (((($250-$50)+5+5) x Rp.10.000) + (0)) x 10% = Rp. 210.000
 PPh : (((($250-$50)+5+5) x Rp.10.000) + (0)) x 7,5% = Rp. 157.500
 Total pungutan : BM+PPN+PPh= Rp. 367.500
 
 func totalPajakImpor() -> Decimal {
 return (totalBeaMasuk() + (((biaya.nilaiBarang - biaya.pembebasanFOB) + biaya.asuransi + biaya.freight) * biaya.kurs)) * biaya.tarifPDHI
 }
 */


