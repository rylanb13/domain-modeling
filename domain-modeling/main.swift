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

func testAddMoney(firstType: CurrencyType, secondType: CurrencyType) {
    var firstValue = Money(value: 10.0, currency: firstType)
    let secondValue = Money(value: 10.0, currency: secondType)
    firstValue.add(secondValue)
    print("10.0 \(firstType) + 10.0 \(secondType) = \(firstValue.value) \(firstType)")
}

testAddMoney(CurrencyType.USD, secondType: CurrencyType.USD)
testAddMoney(CurrencyType.USD, secondType: CurrencyType.GBP)
testAddMoney(CurrencyType.GBP, secondType: CurrencyType.USD)
testAddMoney(CurrencyType.GBP, secondType: CurrencyType.GBP)
testAddMoney(CurrencyType.EUR, secondType: CurrencyType.USD)
testAddMoney(CurrencyType.EUR, secondType: CurrencyType.EUR)
testAddMoney(CurrencyType.CAN, secondType: CurrencyType.USD)
testAddMoney(CurrencyType.CAN, secondType: CurrencyType.CAN)

func testSubtractMoney(firstType: CurrencyType, secondType: CurrencyType) {
    var firstValue = Money(value: 10.0, currency: firstType)
    let secondValue = Money(value: 10.0, currency: secondType)
    firstValue.subtract(secondValue)
    print("10.0 \(firstType) - 10.0 \(secondType) = \(firstValue.value) \(firstType)")
}

testSubtractMoney(CurrencyType.USD, secondType: CurrencyType.USD)
testSubtractMoney(CurrencyType.USD, secondType: CurrencyType.GBP)
testSubtractMoney(CurrencyType.GBP, secondType: CurrencyType.USD)
testSubtractMoney(CurrencyType.GBP, secondType: CurrencyType.GBP)
testSubtractMoney(CurrencyType.EUR, secondType: CurrencyType.USD)
testSubtractMoney(CurrencyType.EUR, secondType: CurrencyType.EUR)
testSubtractMoney(CurrencyType.CAN, secondType: CurrencyType.USD)
testSubtractMoney(CurrencyType.CAN, secondType: CurrencyType.CAN)









