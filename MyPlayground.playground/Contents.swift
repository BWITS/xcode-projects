//: Playground - noun: a place where people can play

import UIKit

var str = "Hello"

var myString = str + " world"

for chars in myString.characters{
    print (chars)
}

var newTypeString = NSString(string: myString)

newTypeString.substringWithRange(NSRange(location: 3, length: 4))
newTypeString.containsString("wor")
newTypeString.componentsSeparatedByString(" ")
newTypeString.uppercaseString
