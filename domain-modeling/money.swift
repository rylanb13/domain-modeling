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
            valueToCurrencyType(changeType);
            currency = changeType
        }
    }
    
    init (value: Double, currency: CurrencyType) {
        self.value = value;
        self.currency = currency
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
    
    mutating func valueToCurrencyType (changeType: CurrencyType) {
        let constantForUSD = makeUSD();
        
        switch changeType {
        case .USD:
            value = constantForUSD
        case .EUR:
            value = 1.5 * constantForUSD
        case .GBP:
            value = 0.5 * constantForUSD
        case .CAN:
            value = 1.25 * constantForUSD
        }
    }
    
    mutating func add(var addValue: Money) {
        addValue.changeCurrency(currency);
        value += addValue.value;
    }
    
    mutating func subtract(var subtractValue: Money) {
        subtractValue.changeCurrency(currency);
        value -= subtractValue.value;
    }
}

var test = Money(value: 2.00, currency: .GBP)
var test2 = test.makeUSD()


