

import Foundation

class Comma {
    
    static func addComma(num:String) -> String {
        
        if deleteComma(num: num) == 0 {
            return "0"
        }
        
        if num != "" {
            let formatter = NumberFormatter()
            formatter.numberStyle = NumberFormatter.Style.decimal
            formatter.groupingSeparator = ","
            formatter.groupingSize = 3
            
            let cutNum = num.replacingOccurrences(of: ",", with: "")
            let numInt = Int(cutNum)
            let str = formatter.string(from: NSNumber(value: numInt!))!
            return str
        }
        return ""
    }
    
    static func deleteComma(num:String) -> Int{
        var cutNum = num.replacingOccurrences(of: ",", with: "")
        if cutNum == "" || cutNum.count > 13{
            cutNum = "0"
        }
        return Int(cutNum)!
    }
}
