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
    
    var value : Double;
    var currency : CurrencyType
    
    mutating func changeCurrency (changeType: CurrencyType) {
        if currency != changeType {
            currency = changeType
        }
    }
    
    func makeUSD() -> Double {
        switch currency {
        case .USD:
            return value;
        case .EUR:
            return 2.0 * value / 3.0;
        case .GBP:
            return 2.0 * value;
        case .CAN:
            return 4.0 * value / 5.0;
        }
    }
}