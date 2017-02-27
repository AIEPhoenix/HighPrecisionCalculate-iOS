//: Playground - noun: a place where people can play

import UIKit

///Basic
var x = 1.decimalNumberValue()
var y = 3.33.decimalNumberValue()
var z = "a".decimalNumberValue() ?? "1".decimalNumberValue()
-x
+x
///Calculate
//Addition
x + 1
1 + x
x + 1.1
1.1 + x
x++
++x
x += 1
x.stringValue
//Subtraction
x - 1
1 - x
x - 1.1
1.1 - x
--x
x--
x -= 1
x.stringValue
//Multiplication
x * 2
2 * x
x * 1.5
1.5 * x
x *= 1.5
//Division
x / 2
2 / x
x / 1.5
1.5 / x
x /= 1.5
//Compare
1.decimalNumberValue() > 0
1.decimalNumberValue() < 0

1.decimalNumberValue() > 1.1
1.decimalNumberValue() < 1.1

1.decimalNumberValue() >= 1
1.decimalNumberValue() >= 0.5 //false
1.decimalNumberValue() >= 1.1 //false