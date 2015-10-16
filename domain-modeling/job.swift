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
    
    func calculateIncome(hours: Float, job: Job) -> Float {
        var salary = job.salary
        if job.salaryType == "per-hour" {
            salary = salary * hours
        }
        return salary;
    }
    
    func raise(perc: Float) {
        salary = salary * (1.0 + perc)
    }
    
    var plummer = Job(title: "plummer", salary: 30000, salaryType: "per-year")
}