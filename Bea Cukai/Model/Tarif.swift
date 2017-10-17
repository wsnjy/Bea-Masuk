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
        
        return Tarif(HS_Code:data["hs_code"],
                     description:data["uraian"],
                     percent:data["mfn"])
    }
    
    func getAllResult(parameter:String, value:String) -> [Tarif] {
        
        let parameter = newKey(parameter)
        
        var result:[Tarif] = []
        
        do {
            if let file = Bundle.main.url(forResource: "btki", withExtension: "json") {
                let data = try Data(contentsOf: file)
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                if let object = json as? [String: Any] {
                    // json is a dictionary
                    print(object)
                } else if let object = json as? [[String:String]] {
                    // json is a array
                    print("\(parameter) \(value)")
                    let filteredTarif = object.filter({
                        $0[parameter]?.range(of: value) != nil
                    })
                    print(filteredTarif)
                    result = setTarifData(array: filteredTarif)
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

    func setTarifData(array:[[String:String]]) -> [Tarif]{
        
        var result:[Tarif] = []
        
        for tarif in array{
            
            let data = dataTarif(tarif)
            result.append(data)
            
        }
        
        return result
    }
    
    func newKey(_ key:String) -> String {
        
        switch key {
        case "Deskripsi Barang":
            return "uraian"
        default:
            return "hs_code"
        }
        
    }
    
    
}


