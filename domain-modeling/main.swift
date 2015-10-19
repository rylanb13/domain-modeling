//  Rylan Bonnevie
//  main.swift
//  domain-modeling
//  Info 498 A
//
//  Created by Rylan Bonnevie on 10/15/15.
//  Copyright © 2015 Rylan Bonnevie. All rights reserved.
//

import Foundation

func testChangeCurrency (thisCurrency: CurrencyType, changeType: CurrencyType) {
    var testMoney = Money(value: 10.0, currency: thisCurrency);
    testMoney.changeCurrency(changeType);
    print("changed 10.0 \(thisCurrency) to \(testMoney.value) \(changeType)")
}

testChangeCurrency(CurrencyType.USD, changeType: CurrencyType.GBP)
testChangeCurrency(CurrencyType.USD, changeType: CurrencyType.EUR)
testChangeCurrency(CurrencyType.USD, changeType: CurrencyType.CAN)
testChangeCurrency(CurrencyType.GBP, changeType: CurrencyType.USD)
testChangeCurrency(CurrencyType.GBP, changeType: CurrencyType.EUR)
testChangeCurrency(CurrencyType.GBP, changeType: CurrencyType.CAN)
testChangeCurrency(CurrencyType.EUR, changeType: CurrencyType.GBP)
testChangeCurrency(CurrencyType.EUR, changeType: CurrencyType.USD)
testChangeCurrency(CurrencyType.EUR, changeType: CurrencyType.CAN)
testChangeCurrency(CurrencyType.CAN, changeType: CurrencyType.GBP)
testChangeCurrency(CurrencyType.CAN, changeType: CurrencyType.EUR)
testChangeCurrency(CurrencyType.CAN, changeType: CurrencyType.USD)


