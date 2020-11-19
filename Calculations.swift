

import UIKit

struct Calculations {
    
    var bmi: BMIStruct?
    
    mutating func calculateBMI (W: Float, H: Float) {
        let bmiValue = W / (H * H)
        
        if bmiValue < 18.5 {
            bmi = BMIStruct(value: bmiValue, advice: "Try eat more meat.", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue > 24.9 {
            bmi = BMIStruct(value: bmiValue, advice: "Try eat more veggies.", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        } else {
            bmi = BMIStruct(value: bmiValue, advice: "You're fit bro.", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }
    }
    
    func returnBMI () -> String {
        let bmiString = String(format: "%.1f", bmi?.value ?? "BMI Error")
        return bmiString
    }
    
    func returnAdvice () -> String {
        return bmi?.advice ?? "Advice Error"
    }
    
    func returnColor () -> UIColor {
        return bmi?.color ?? UIColor.red
    }
}
