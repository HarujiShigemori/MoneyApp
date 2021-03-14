

import Foundation

class Comma {
    
    static func addComma(num:String) -> String {
        
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
}
