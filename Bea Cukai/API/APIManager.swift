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
    
    
    let baseURL = "https://api.exchangeratesapi.io/latest"
    static let currentyEndPoint = "?base="
    static let currencyParams = "&symbols=CNY,EUR,GBP,HKD,JPY,SGD,IDR,AUD,MYR"

    func getCurrency(base:String, completion:@escaping(_ result: JSON,_ error:Bool) ->())  {
        
        let url = baseURL + APIManager.currentyEndPoint + base + APIManager.currencyParams
        print(url)
        Alamofire.request(url, method: .get).validate().responseJSON { response in
            print()

            switch response.result {

            case .success(let value):

                let json = JSON(value)
                let currency = Decimal(json["rates"]["IDR"].doubleValue)
                self.usdToIDR(currency)
                self.dateNow()
                completion(json, response.result.isFailure)
                
            case .failure(let error):
                print(error)
                completion(JSON.null, response.result.isFailure)
            }
        }

    }
    
    func usdToIDR(_ data:Decimal){
        let userDefault = UserDefaults()
        userDefault.set(data, forKey: "USD")
    }
    
    
    func dateNow() {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMMM yyyy HH:mm"
        formatter.locale = NSLocale(localeIdentifier: "id-ID") as Locale?
        let result = formatter.string(from: date)
        
        let userDefault = UserDefaults()
        userDefault.set("\(result) WIB", forKey: "dateNow")

    }

    
}
