//
//  Tarif.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 9/30/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import Foundation

struct Tarif {
    var HS_Code:String?
    var description:String?
    var percent:String?
}

extension Tarif {
    
    func dataTarif(_ data:[String:String]) -> Tarif {
        
        return Tarif(HS_Code:data["HS_Code"],
                     description:data["description"],
                     percent:data["percent"])
    }
    
}


