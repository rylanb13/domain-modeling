//
//  person.swift
//  domain-modeling
//
//  Created by Rylan Bonnevie on 10/15/15.
//  Copyright © 2015 Rylan Bonnevie. All rights reserved.
//

import Foundation

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
