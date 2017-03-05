//
//  CGFloat+HighPrecision.swift
//  HighPrecisionCalculate
//
//  Created by AIE_SS on 2017/3/5.
//  Copyright © 2017年 AIE_iOS. All rights reserved.
//

import UIKit

extension CGFloat: HighPrecisionable{
    public func decimalNumberValue() -> NSDecimalNumber {
        if let decimalValue = String(describing: self).decimalNumberValue(){
            return decimalValue
        }else{
            print("HighPrecisionError: convert CGFloat To DecimalNumber faile!!!")
            return NSDecimalNumber.zero
        }
    }
}
