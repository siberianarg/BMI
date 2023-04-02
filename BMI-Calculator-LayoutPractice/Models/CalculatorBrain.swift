
import Foundation

struct CalculatorBrain {
    
    var bmiValue: Float?
    
    func getBMIValue() -> String {
        
            let bmiValueTo1DecimalPlace = String(format: "%.1f", bmiValue ?? 0.0)
            return bmiValueTo1DecimalPlace
            
        }
        
        mutating func calculateBMI(_ height: Float, _ weight: Float) {
            bmiValue = weight / pow(height, 2)
            
        }
        
    }
