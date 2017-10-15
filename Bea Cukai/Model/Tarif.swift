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
    
    func dataJson() -> [[String:String]]{
        
        var result:[[String:String]] = [[:]]
        
        
        do {
            if let file = Bundle.main.url(forResource: "btki", withExtension: "json") {
                let data = try Data(contentsOf: file)
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                if let object = json as? [String: Any] {
                    // json is a dictionary
                    print(object)
                } else if let object = json as? [[String:String]] {
                    // json is a array
                    
                    let filteredTarif = object.filter({
                        $0["uraian"]?.range(of: "kendaraan") != nil
                    })
                    print(filteredTarif[0])
                    result = filteredTarif
                } else {
                    print("JSON is invalid")
                }
            } else {
                print("no file")
            }
        } catch {
            print(error.localizedDescription)
        }
        
        return result
    }

    
}


