import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more Pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue <= 24.9 {
           bmi = BMI(value: bmiValue, advice: "Fir as a fibble", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        }else {
           bmi = BMI(value: bmiValue, advice: "Eat less Pies", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
    }
    
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        let advice = bmi?.advice ?? "No Advice"
        return advice
    }
    
    func getColor() -> UIColor {
        let color = bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return color
    }
}
