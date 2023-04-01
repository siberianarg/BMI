
import Foundation

struct CalculatorBrain {
    var bmiValue: String!
    
    mutating func calculateBMI(_ height: Float, _ weight: Float) -> String {
        let bmi = weight / pow(height, 2)
        bmiValue = String(format: "%.1f", bmi)
        return bmiValue
    }
    

}
