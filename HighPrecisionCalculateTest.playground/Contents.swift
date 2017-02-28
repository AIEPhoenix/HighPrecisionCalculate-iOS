//: Playground - noun: a place where people can play

import UIKit

///Basic
var x = 1.decimalNumberValue()
var y = 3.33.decimalNumberValue()
var z = "a".decimalNumberValue() ?? "1".decimalNumberValue()

NSDecimalNumber(value: 1.21134550)
1.21134550.decimalNumberValue()

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

1.decimalNumberValue() >= 1.0
1.decimalNumberValue() >= 0.5
1.decimalNumberValue() >= 1.1

1.decimalNumberValue() <= 1.0
1.decimalNumberValue() <= 0.5
1.decimalNumberValue() <= 1.1

1.decimalNumberValue() == 1
1.decimalNumberValue() == 1.0
1.decimalNumberValue() == 0.5
//rounding
//     |
1.2436754.decimalNumberValue().plainRounding(withScale: 6)
1.24368550.decimalNumberValue().plainRounding(withScale: 6)
1.24367550.decimalNumberValue().bankersRounding(withScale: 6)
1.24367551.decimalNumberValue().plainRounding(withScale: 6)
1.2436756.decimalNumberValue().plainRounding(withScale: 6)
//     |
1.2436754.decimalNumberValue().upRounding(withScale: 6)
1.24368550.decimalNumberValue().upRounding(withScale: 6)
1.24367550.decimalNumberValue().upRounding(withScale: 6)
1.24367522.decimalNumberValue().upRounding(withScale: 6)
1.24367501.decimalNumberValue().upRounding(withScale: 6)
//     |
1.2436754.decimalNumberValue().downRounding(withScale: 6)
1.24368550.decimalNumberValue().downRounding(withScale: 6)
1.24367550.decimalNumberValue().downRounding(withScale: 6)
1.24367522.decimalNumberValue().downRounding(withScale: 6)
1.24367501.decimalNumberValue().downRounding(withScale: 6)
//     |
Float(1.2436754).decimalNumberValue().bankersRounding(withScale: 6)
1.24368550.decimalNumberValue().bankersRounding(withScale: 6)
1.24367550.decimalNumberValue().bankersRounding(withScale: 6)
1.24367551.decimalNumberValue().bankersRounding(withScale: 6)
1.2436756.decimalNumberValue().bankersRounding(withScale: 6)


3.405649.decimalNumberValue() % 2.decimalNumberValue()
floor(decimalNumber: 12.2.decimalNumberValue() / 2.11.decimalNumberValue())
ceil(decimalNumber: 12.2.decimalNumberValue() / 2.11.decimalNumberValue())