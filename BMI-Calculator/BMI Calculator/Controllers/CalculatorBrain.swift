//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Scott Melton on 5/15/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI (height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if (bmiValue < 18.5) {
            bmi = BMI(value: bmiValue, advice: "Eat more", color: UIColor.blue)
        } else if (bmiValue < 24.9) {
            bmi = BMI(value: bmiValue, advice: "Stay the same", color: UIColor.green)
        } else {  // meaning the bmi value must've been more than 24.9
            bmi = BMI(value: bmiValue, advice: "Eat less", color: UIColor.red)
        }
    }
    
    func getBMIValue () -> String {
        let bmiToOneDecimalPlace: String = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToOneDecimalPlace
    }
    
    func getAdvice () -> String {
        return bmi?.advice ?? "BMI was not calculated properly"
    }
    
    func getColor () -> UIColor {
        return bmi?.color ?? UIColor.clear
    }
    
}
