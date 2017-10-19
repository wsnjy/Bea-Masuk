//
//  APIManager.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 10/5/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

class APIManager: NSObject {

    static let sharedInstance = APIManager()
    
    let baseURL = "http://api.fixer.io/"
    static let currentyEndPoint = "latest?base="
    static let currencyParams = "&symbols=CNY,EUR,GBP,HKD,JPY,SAR,SGD,IDR,AUD,MYR"

    func getCurrency(base:String, completion:@escaping(_ result: JSON) ->())  {
        
        let url = baseURL + APIManager.currentyEndPoint + base + APIManager.currencyParams
        print(baseURL)
        Alamofire.request(url, method: .get).validate().responseJSON { response in
            
            switch response.result {

            case .success(let value):

                let json = JSON(value)
                let currency = Decimal(json["rates"]["IDR"].doubleValue)
                completion(json)
                self.usdToIDR(currency)
            case .failure(let error):
                print(error)
            }
        }

    }
    
    func usdToIDR(_ data:Decimal){
        let userDefault = UserDefaults()
        userDefault.set(data, forKey: "USD")
    }
    
    
}
