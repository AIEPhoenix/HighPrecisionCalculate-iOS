//
//  NSDecimalNumber+RewriteOperator.swift
//  AIESPStockChart
//
//  Created by BrianLee on 2017/2/13.
//  Copyright © 2017年 Artificial Intelligent Endless. All rights reserved.
//

import Foundation

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
    
    public static func == (lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> Bool {
        let result = lhs.compare(rhs)
        return result == .orderedSame
    }
}

extension NSDecimalNumber{
    public class var minusOne: NSDecimalNumber{
        struct LoadOnce {
            static let minusOne = NSDecimalNumber.zero - NSDecimalNumber.one
        }
        return LoadOnce.minusOne
    }
}

prefix public func +(x: NSDecimalNumber) -> NSDecimalNumber{
    return x
}

prefix public func -(x: NSDecimalNumber) -> NSDecimalNumber{
    return x * NSDecimalNumber.minusOne
}

public func +(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> NSDecimalNumber{
    return lhs.adding(rhs)
}

public func -(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> NSDecimalNumber{
    return lhs.subtracting(rhs)
}

public func *(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> NSDecimalNumber{
    return lhs.multiplying(by: rhs)
}

public func /(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> NSDecimalNumber{
    return lhs.dividing(by: rhs)
}

public func +=(lhs: inout NSDecimalNumber, rhs: NSDecimalNumber){
    lhs = lhs + rhs
}

public func -=(lhs: inout NSDecimalNumber, rhs: NSDecimalNumber){
    lhs = lhs - rhs
}

public func *=(lhs: inout NSDecimalNumber, rhs: NSDecimalNumber){
    lhs = lhs * rhs
}

public func /=(lhs: inout NSDecimalNumber, rhs: NSDecimalNumber){
    lhs = lhs / rhs
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

prefix public func --(x: inout NSDecimalNumber) -> NSDecimalNumber{
    x -= NSDecimalNumber.one
    return x
}

postfix public func --(x: inout NSDecimalNumber) -> NSDecimalNumber{
    let result = x
    let _ = --x
    return result
}

infix operator ^{ precedence 150 }
public func ^(lhs: NSDecimalNumber, rhs: Int) -> NSDecimalNumber{
    return lhs.raising(toPower: rhs)
}
