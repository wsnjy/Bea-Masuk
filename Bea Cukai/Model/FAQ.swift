//
//  FAQ.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 11/8/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

struct FAQ {
    
    var question:String?
    var answer:String?
    
}

extension FAQ {
    
    init(_ data:[String:String]) {
        question = data["question"]
        answer   = data["answer"]
    }
    
}
