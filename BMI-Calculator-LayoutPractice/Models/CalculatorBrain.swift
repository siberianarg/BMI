
import Foundation

struct CalculatorBrain {
    
    var bmiValue: Float?
    
    func getBMIValue() -> String {
        if bmiValue != nil {
            let bmiValueTo1DecimalPlace = String(format: "%.1f", bmiValue!)
            return bmiValueTo1DecimalPlace
        } else {
            return "0.0"
        }
        
    }
    
    mutating func calculateBMI(_ height: Float, _ weight: Float) {
        bmiValue = weight / pow(height, 2)
        
    }
    
}
