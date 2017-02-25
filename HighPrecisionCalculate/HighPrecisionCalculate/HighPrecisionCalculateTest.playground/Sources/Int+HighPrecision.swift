import Foundation

extension Int: HighPrecisionable{
    public func decimalNumberValue() -> NSDecimalNumber{
        return NSDecimalNumber(value: self)
    }
}
