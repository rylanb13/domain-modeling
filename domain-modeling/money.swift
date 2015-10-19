//
//  money.swift
//  domain-modeling
//
//  Created by Rylan Bonnevie on 10/15/15.
//  Copyright © 2015 Rylan Bonnevie. All rights reserved.
//

import Foundation

enum CurrencyType {
    case USD
    case EUR
    case GBP
    case CAN
}

struct Money {
    
    var amount : Double;
    var currency : CurrencyType
    
}