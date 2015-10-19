//
//  family.swift
//  domain-modeling
//
//  Created by Rylan Bonnevie on 10/15/15.
//  Copyright © 2015 Rylan Bonnevie. All rights reserved.
//

import Foundation

class Family {
    var family: [Person]
    
    init(family: Person...) {
        self.family = family
    }
    
    func householdIncome(family: [Person]) -> Float {
        var income = Float(0.0)
        for var index = 0; index < family.count; index++ {
            if (family[index].getJob() != nil) {
                income += family[index].getJob()!.calculateIncome(2000, job: family[index].job!)
            }
        }
        return income;
    }
    
    private var legal : Bool {
        get {
            for var index = 0; index < family.count; index++ {
                if (family[index].age > 21) {
                    return true;
                }
            }
            return false;
        }
    }
}