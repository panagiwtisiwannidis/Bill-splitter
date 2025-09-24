//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Panagiotis on 3/5/25.
//

import Foundation
import UIKit
struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
        
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor(_colorLiteralRed: 0.0, green: 1.0, blue: 1.0, alpha: 1.0))
        }else if bmiValue < 24.9{
            
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: UIColor(_colorLiteralRed: 0.75, green: 1.0, blue: 0.0, alpha: 1.0))
        }else{
            
            bmi = BMI(value: bmiValue, advice: "Stop eating", color: UIColor(_colorLiteralRed: 1.0, green: 0.0, blue: 0.0, alpha: 1.0))
        }
    }
    func getBMIValue() -> String {
        let bmiTo1Decimal = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1Decimal
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
