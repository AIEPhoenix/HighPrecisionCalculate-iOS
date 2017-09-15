//
//  UInt+HighPrecision.swift
//  HighPrecisionCalculate
//
//  Created by brian on 2017/9/15.
//  Copyright © 2017年 AIE_iOS. All rights reserved.
//

import Foundation

extension UInt: HighPrecisionable{
    public func decimalNumberValue() -> NSDecimalNumber{
        return NSDecimalNumber(value: self)
    }
}
