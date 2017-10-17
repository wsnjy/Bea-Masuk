//
//  ResultViewModel.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 10/17/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

struct ResultViewModel {

    var result:[Tarif] = []
    
}

extension ResultViewModel {
    
    func labelCode(_ indexPath: IndexPath, _ data:[Tarif]) -> String {
        return "HS Code " + data[indexPath.row].HS_Code!
    }

    func labelPercent(_ indexPath: IndexPath, _ data:[Tarif]) -> String {
        
        guard data[indexPath.row].percent!.count > 0 else {
            return "N/A"
        }
        return data[indexPath.row].percent! + "%"
    }
}

extension ResultViewModel {
    
    func leftLabel(_ indexPath:IndexPath) -> String {
        let label = ["Bea Masuk", "PPN", "PPN BM", "PPH Pasal 22", "Total Pungutan"]
        return label[indexPath.row]
    }
    
}
