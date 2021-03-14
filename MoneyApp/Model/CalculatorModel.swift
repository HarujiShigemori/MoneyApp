
import Foundation

class CalculatorModel {
    
    func calcFinalAmount(start:Int,monthly:Int,years:Int,annualYield:Int) -> (result:Array<Int>, investmentAmount:String , interest:String){

        let totalMonth = years * 12

        let convert = Double(annualYield) / 100 + 1
        let month:Double = 1 / 12
        let monthlyInterest = pow(Double(convert), month)

        var resultMoney:Int = start
        var result = [Int]()

        for x in 0..<totalMonth {
            let month = x + 1
            
            let total = Int(Double(monthly) * pow(monthlyInterest, Double(month)))
            resultMoney += total
            
            if month % 12 == 0 {
                
                let startRes = Int(Double(start) * pow(convert, Double(month / 12)) - Double(start) * pow(convert, Double(month / 12 - 1)))
                
                resultMoney += startRes
                
                result.append(resultMoney)
                
            }
        }
        
        let investmentAmount = String(start + monthly * totalMonth)
        let interest = String(result.last! - Int(investmentAmount)!)
        
        return (result,investmentAmount,interest)
    }
}
