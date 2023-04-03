
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        
        let bmiValueTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiValueTo1DecimalPlace
        
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .systemBackground
    }
    
    mutating func calculateBMI(_ height: Float, _ weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "eat more pies", color: .blue)
        } else if bmiValue > 24.9 {
            bmi = BMI(value: bmiValue, advice: "eat less pies", color: .red)
        } else {
            bmi = BMI(value: bmiValue, advice: "fit as a fiddle", color: .green)
        }
        
    }
    
}
