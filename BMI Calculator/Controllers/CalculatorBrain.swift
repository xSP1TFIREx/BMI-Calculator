import UIKit


struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) -> Float {
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: .blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: .green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: .orange)
        }
        
        return bmi?.value ?? 0.1
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? "0.1")
    }
    
    func getAdvice() -> String {
        bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        bmi?.color ?? .white
    }
}
