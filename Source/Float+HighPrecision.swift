//
//  NSDecimalNumber+HighPrecision.swift
//
//
//  Created by AIE-iOS on 2017/2/13.
//  Copyright © 2017年 AIE-iOS. All rights reserved.
//

import Foundation

extension Float: HighPrecisionable{
    public func decimalNumberValue() -> NSDecimalNumber{
        if let decimalValue = String(self).decimalNumberValue(){
            return decimalValue
        }else{
            print("HighPrecisionError: convert Float To DecimalNumber faile!!!")
            return NSDecimalNumber.zero
        }
    }
}
