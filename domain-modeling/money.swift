//
//  money.swift
//  domain-modeling
//
//  Created by Rylan Bonnevie on 10/15/15.
//  Copyright © 2015 Rylan Bonnevie. All rights reserved.
//

import Foundation

struct Money {
    var amount: Float;
    var currency: String;
    
    func convert(currency: String, amount: Float, convertTo: String) -> Float {
        var value: Float = amount;
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
