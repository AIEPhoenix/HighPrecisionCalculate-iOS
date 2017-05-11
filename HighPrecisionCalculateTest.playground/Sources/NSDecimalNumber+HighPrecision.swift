//
//  NSDecimalNumber+HighPrecision.swift
//
//
//  Created by AIE-iOS on 2017/2/13.
//  Copyright © 2017年 AIE-iOS. All rights reserved.
//

import Foundation

#if DEBUG
fileprivate let kDebugEnvFlag = true
#else
fileprivate let kDebugEnvFlag = false
#endif

public protocol HighPrecisionable {
    func decimalNumberValue() -> NSDecimalNumber
}
///------------------------------------------------------------------
//MARK:- Compare
extension NSDecimalNumber: Comparable{
    public static func <(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> Bool{
        let result = lhs.compare(rhs)
        return result == .orderedAscending
    }

    public static func <=(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> Bool{
        let result = lhs.compare(rhs)
        switch result {
        case .orderedAscending,.orderedSame:
            return true
        default:
            return false
        }
    }

    public static func >=(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> Bool{
        let result = lhs.compare(rhs)
        switch result {
        case .orderedDescending,.orderedSame:
            return true
        default:
            return false
        }
    }

    public static func >(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> Bool{
        let result = lhs.compare(rhs)
        return result == .orderedDescending
    }
}
//MARK: Comparable For HighPrecisionable
public func <(lhs: NSDecimalNumber, rhs: HighPrecisionable) -> Bool{
    let result = lhs.compare(rhs.decimalNumberValue())
    return result == .orderedAscending
}
public func <(lhs: HighPrecisionable, rhs: NSDecimalNumber) -> Bool{
    let result = lhs.decimalNumberValue().compare(rhs)
    return result == .orderedAscending
}

public func <=(lhs: HighPrecisionable, rhs: NSDecimalNumber) -> Bool{
    let result = lhs.decimalNumberValue().compare(rhs)
    switch result {
    case .orderedAscending,.orderedSame:
        return true
    default:
        return false
    }
}
public func <=(lhs: NSDecimalNumber, rhs: HighPrecisionable) -> Bool{
    let result = lhs.compare(rhs.decimalNumberValue())
    switch result {
    case .orderedAscending,.orderedSame:
        return true
    default:
        return false
    }
}

public func >=(lhs: HighPrecisionable, rhs: NSDecimalNumber) -> Bool{
    let result = lhs.decimalNumberValue().compare(rhs)
    switch result {
    case .orderedDescending,.orderedSame:
        return true
    default:
        return false
    }
}
public func >=(lhs: NSDecimalNumber, rhs: HighPrecisionable) -> Bool{
    let result = lhs.compare(rhs.decimalNumberValue())
    switch result {
    case .orderedDescending,.orderedSame:
        return true
    default:
        return false
    }
}

public func >(lhs: HighPrecisionable, rhs: NSDecimalNumber) -> Bool{
    let result = lhs.decimalNumberValue().compare(rhs)
    return result == .orderedDescending
}
public func >(lhs: NSDecimalNumber, rhs: HighPrecisionable) -> Bool{
    let result = lhs.compare(rhs.decimalNumberValue())
    return result == .orderedDescending
}
//MARK: Equatable For HighPrecisionable
public func ==(lhs: HighPrecisionable, rhs: NSDecimalNumber) -> Bool{
    let result = lhs.decimalNumberValue().compare(rhs)
    return result == .orderedSame
}
public func ==(lhs: NSDecimalNumber, rhs: HighPrecisionable) -> Bool{
    let result = lhs.compare(rhs.decimalNumberValue())
    return result == .orderedSame
}
///------------------------------------------------------------------
//MARK:- Unary Operator
prefix public func +(x: NSDecimalNumber) -> NSDecimalNumber{
    return x
}

prefix public func -(x: NSDecimalNumber) -> NSDecimalNumber{
    return x * NSDecimalNumber.minusOne
}

extension NSDecimalNumber{
    public class var minusOne: NSDecimalNumber{
        struct CalculateOnce {
            static let minusOne = NSDecimalNumber(value: -1)
        }
        return CalculateOnce.minusOne
    }
}
///------------------------------------------------------------------
//MARK:- Addition
public func +(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> NSDecimalNumber{
    return lhs.adding(rhs)
}

public func +(lhs: NSDecimalNumber, rhs: HighPrecisionable) -> NSDecimalNumber{
    return lhs.adding(rhs.decimalNumberValue())
}
public func +(lhs: HighPrecisionable, rhs: NSDecimalNumber) -> NSDecimalNumber{
    return lhs.decimalNumberValue().adding(rhs)
}

public func +=(lhs: inout NSDecimalNumber, rhs: NSDecimalNumber){
    lhs = lhs + rhs
}

prefix public func ++(x: inout NSDecimalNumber) -> NSDecimalNumber{
    x += NSDecimalNumber.one
    return x
}

postfix public func ++(x: inout NSDecimalNumber) -> NSDecimalNumber{
    let result = x
    let _ = ++x
    return result
}
///------------------------------------------------------------------
//MARK:- Subtraction
public func -(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> NSDecimalNumber{
    return lhs.subtracting(rhs)
}

public func -(lhs: NSDecimalNumber, rhs: HighPrecisionable) -> NSDecimalNumber{
    return lhs.subtracting(rhs.decimalNumberValue())
}
public func -(lhs: HighPrecisionable, rhs: NSDecimalNumber) -> NSDecimalNumber{
    return lhs.decimalNumberValue().subtracting(rhs)
}

public func -=(lhs: inout NSDecimalNumber, rhs: NSDecimalNumber){
    lhs = lhs - rhs
}

prefix public func --(x: inout NSDecimalNumber) -> NSDecimalNumber{
    x -= NSDecimalNumber.one
    return x
}

postfix public func --(x: inout NSDecimalNumber) -> NSDecimalNumber{
    let result = x
    let _ = --x
    return result
}
///------------------------------------------------------------------
//MARK:- Multiplication
public func *(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> NSDecimalNumber{
    return lhs.multiplying(by: rhs)
}

public func *(lhs: NSDecimalNumber, rhs: HighPrecisionable) -> NSDecimalNumber{
    return lhs.multiplying(by: rhs.decimalNumberValue())
}
public func *(lhs: HighPrecisionable, rhs: NSDecimalNumber) -> NSDecimalNumber{
    return lhs.decimalNumberValue().multiplying(by: rhs)
}

public func *=(lhs: inout NSDecimalNumber, rhs: NSDecimalNumber){
    lhs = lhs * rhs
}
///------------------------------------------------------------------
//MARK:- Division
public func /(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> NSDecimalNumber{
    return lhs.dividing(by: rhs)
}

public func /(lhs: NSDecimalNumber, rhs: HighPrecisionable) -> NSDecimalNumber{
    return lhs.dividing(by: rhs.decimalNumberValue())
}
public func /(lhs: HighPrecisionable, rhs: NSDecimalNumber) -> NSDecimalNumber{
    return lhs.decimalNumberValue().dividing(by: rhs)
}

public func /=(lhs: inout NSDecimalNumber, rhs: NSDecimalNumber){
    lhs = lhs / rhs
}
///------------------------------------------------------------------
//MARK:- Rounding
extension NSDecimalNumber{
    public func plainRounding(withScale scale: Int16) -> NSDecimalNumber{
        let roundingBehavior = NSDecimalNumberHandler(roundingMode: .plain,
                                                      scale: scale,
                                                      raiseOnExactness: kDebugEnvFlag,
                                                      raiseOnOverflow: kDebugEnvFlag,
                                                      raiseOnUnderflow: kDebugEnvFlag,
                                                      raiseOnDivideByZero: kDebugEnvFlag)
        return self.rounding(accordingToBehavior: roundingBehavior)
    }
    
    public func upRounding(withScale scale: Int16) -> NSDecimalNumber{
        let roundingBehavior = NSDecimalNumberHandler(roundingMode: .up,
                                                      scale: scale,
                                                      raiseOnExactness: kDebugEnvFlag,
                                                      raiseOnOverflow: kDebugEnvFlag,
                                                      raiseOnUnderflow: kDebugEnvFlag,
                                                      raiseOnDivideByZero: kDebugEnvFlag)
        return self.rounding(accordingToBehavior: roundingBehavior)
    }
    
    public func downRounding(withScale scale: Int16) -> NSDecimalNumber{
        let roundingBehavior = NSDecimalNumberHandler(roundingMode: .down,
                                                      scale: scale,
                                                      raiseOnExactness: kDebugEnvFlag,
                                                      raiseOnOverflow: kDebugEnvFlag,
                                                      raiseOnUnderflow: kDebugEnvFlag,
                                                      raiseOnDivideByZero: kDebugEnvFlag)
        return self.rounding(accordingToBehavior: roundingBehavior)
    }
    
    public func bankersRounding(withScale scale: Int16) -> NSDecimalNumber{
        let roundingBehavior = NSDecimalNumberHandler(roundingMode: .bankers,
                                                      scale: scale,
                                                      raiseOnExactness: kDebugEnvFlag,
                                                      raiseOnOverflow: kDebugEnvFlag,
                                                      raiseOnUnderflow: kDebugEnvFlag,
                                                      raiseOnDivideByZero: kDebugEnvFlag)
        return self.rounding(accordingToBehavior: roundingBehavior)
    }
}
///------------------------------------------------------------------
//MARK: Other
public func floor(decimalNumber: NSDecimalNumber) -> NSDecimalNumber{
    return floor(decimalNumber.doubleValue).decimalNumberValue()
}
public func ceil(decimalNumber: NSDecimalNumber) -> NSDecimalNumber{
    return ceil(decimalNumber.doubleValue).decimalNumberValue()
}

extension NSDecimalNumber {
    public func getDecimalSection() -> NSDecimalNumber{
        return self - self.intValue
    }
}
