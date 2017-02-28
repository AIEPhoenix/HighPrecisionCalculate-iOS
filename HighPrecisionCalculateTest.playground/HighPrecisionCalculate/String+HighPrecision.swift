import Foundation

extension String{
    public func decimalNumberValue() -> NSDecimalNumber?{
        let result = NSDecimalNumber(string: self)
        if result == NSDecimalNumber.notANumber{
            return nil
        }else{
            return result
        }
    }
}
