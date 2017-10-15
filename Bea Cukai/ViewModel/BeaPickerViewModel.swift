//
//  BeaPickerViewModel.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 10/15/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import Foundation

struct BeaPickerViewModel {
    
    let searchPicker        = ["HS Code", "Deskripsi Barang"]
    let tarifPicker         = ["Non NPWP (15)", "Non API (7.5)", "API (5)"]
    let pembebasanPicker    = ["Kiriman POS PJT (50)", "Impor Umum (50)", "Penumpang/org (250)", "Penumpang/kel (1000)"]
    
}

extension BeaPickerViewModel {
    
    func valueForTarifOrPembebasan(_ value:String) -> String {
        let newValue = value.components(separatedBy: CharacterSet.decimalDigits.inverted)
            .joined()
        print(newValue)
        return newValue
    }
    
    
}
