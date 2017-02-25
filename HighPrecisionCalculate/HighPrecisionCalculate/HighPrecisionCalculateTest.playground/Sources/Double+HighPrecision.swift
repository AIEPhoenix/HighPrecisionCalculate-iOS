import Foundation

extension Double: HighPrecisionable{
    public func decimalNumberValue() -> NSDecimalNumber{
        return NSDecimalNumber(value: self)
    }
}
