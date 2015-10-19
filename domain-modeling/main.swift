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

print("People");
let fianceGirl = Person(firstName: "Jenny", lastName: "Landingin", age: 30);
print(fianceGirl.toString());
let fianceBoy = Person(firstName: "Rylan", lastName: "Bonnevie", age: 31);
print(fianceBoy.toString());

print("Marry Poeple");
fianceGirl.setSpouse(fianceBoy);
fianceBoy.setSpouse(fianceGirl);

print("Jobs");
let nurse = Job(title: "Nurse", salary: 70000, salaryType: "per-year");
let hm = Job(title: "H&M Employee", salary: 15, salaryType: "per-hour");
fianceGirl.setJob(nurse);
fianceBoy.setJob(hm);

print("Family");
let myFamily = Family(family: fianceGirl, fianceBoy);
print("Income: \(myFamily.householdIncome())");

print("Children");
myFamily.haveChild("Kevin", childLName: "Ke");
print("There are now \(myFamily.family.count) family members");

print("kid");
let kid = Person(firstName: "Jake", lastName: "Kid", age: 12);

print("too young for job");
kid.setJob(nurse);

print("Teenagers");
let boy = Person(firstName: "Phi", lastName: "Voba", age: 13);
let girl = Person(firstName: "Erika", lastName: "Quan", age: 12);
print(boy.toString())
print(girl.toString())

print("can't marry teens");
boy.setSpouse(girl);
girl.setSpouse(boy);

print("Young Parents");
let mother = Person(firstName: "Zahra", lastName: "Masaoka", age: 18);
let father = Person(firstName: "Cameron", lastName: "Boyd", age: 19);
print(mother.toString())
print(father.toString())

print("Young Family");
let family = Family(family: mother, father);

print("Can't Have Child");
family.haveChild("Too", childLName: "Young");












