//
//  CalculatorBrain.swift
//  Tipsy
//
//  Created by Abdulmajit Kubatbekov on 23.11.22.
//

import UIKit

struct CalculatorBrain {
    
    mutating func calculateSalary(inputValue: Float, tipValue: Int, numberOfPerson: Int) -> String{
        let val = (inputValue + (Float(inputValue * Float(tipValue) / 100))) / Float(numberOfPerson)
        return String(format: "%.2f", val)
    }
}
