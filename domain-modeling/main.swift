//  Rylan Bonnevie
//  main.swift
//  domain-modeling
//  Info 498 A
//
//  Created by Rylan Bonnevie on 10/15/15.
//  Copyright © 2015 Rylan Bonnevie. All rights reserved.
//

import Foundation

struct Money {
    var amount: Double = 10.0
    var currency: String = "USD"
    
    func convert(currency: String, amount: Double, convertTo: String) -> Double {
        var value: Double = amount;
        if currency == "USD" {
            if convertTo == "GBP" {
                value = value / 2.0;
            } else if convertTo == "EUR" {
                value = value * 1.5;
            } else {
                value = value * 1.25;
            }
        } else if currency == "GBP" {
            if convertTo == "USD" {
                value = value * 2.0;
            } else if convertTo == "EUR" {
                value = value / 3
            } else {
                value = value / 2.5;
            }
        }
        else if currency == "EUR" {
            if convertTo == "GBP" {
                value = value * 3.0;
            } else if convertTo == "USD" {
                value = value / 1.5;
            } else {
                value = value * 1.25;
            }
            
        }
        return value
    }
}

class Job {
    var title: String
    var salary: Double
    var salaryType: String
    
    init (title: String, salary: Double, salaryType: String) {
        self.title = title;
        self.salary = salary;
        self.salaryType = salaryType;
    }
    
    var plummer = Job(title: "plummer", salary: 30000, salaryType: "per-year")
}

class Person {
    var firstName: String
    var lastName: String
    var age: Int
    var job: Job?
    var spouse: Person?
    
    init(firstName: String, lastName: String, age: Int, job: Job?, spouse: Person?) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.setSpouse(spouse)
        self.setJob(job)
 
    }
    func setJob(job: Job?) {
        if age >= 16 {
            self.job = job
        }
    }
    
    func setSpouse(spouse: Person?) {
        if age >= 18 {
            self.spouse = spouse
        }
    }
    
    func getJob() -> Job? {
        return job
    }
    
    func getSpouse() -> Person? {
        return spouse
    }
}
