//
//  SearchViewModel.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 10/14/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

struct SearchViewModel {

    let cellConfigData:Array = [
                                [
                                    ["top_title":"Metode Pencarian","placeholder":"pilih"],
                                     ["top_title":"Kata Kunci atau HS Code","placeholder":"Masukan Parameter Pencarian"],
                             ],
                                [
                                    ["top_title":"Input Manual (%)","placeholder":"Masukan nilai tarif bea masuk"]
                                ]
                            ]
    
    
}

extension SearchViewModel {
    
    func placeholderText(_ indexPath:IndexPath) -> String {
        return cellConfigData[indexPath.section][indexPath.row]["placeholder"]!
    }
    
    func topTitle(_ indexPath: IndexPath) -> String {
        return cellConfigData[indexPath.section][indexPath.row]["top_title"]!
    }
    
    func percentage(_ indexPath: IndexPath) -> String {
        return "\(cellConfigData[indexPath.section][indexPath.row]["percentage"]!)%"
    }
    
    func rowCount() -> Int {
        return cellConfigData.count
    }
    
}
