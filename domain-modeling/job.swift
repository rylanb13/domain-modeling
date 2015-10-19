//
//  job.swift
//  domain-modeling
//
//  Created by Rylan Bonnevie on 10/15/15.
//  Copyright © 2015 Rylan Bonnevie. All rights reserved.
//

import Foundation

class Job {
    var title: String
    var salary: Float
    var salaryType: String
    
    init (title: String, salary: Float, salaryType: String) {
        self.title = title;
        self.salary = salary;
        self.salaryType = salaryType;
    }
    
    func calculateIncome(hours: Float) -> Float {
        if salaryType == "per-hour" {
            salary = salary * hours
        }
        return salary;
    }
    
    func raise(perc: Float) {
        salary += salary * perc;
    }
}