//: Playground - noun: a place where people can play

import UIKit

var number = 1
var isPrime = true

if number != 2 && number != 1 {
  for var i=2;i<=number/2+1;i++ {
    if number % i == 0 {
        isPrime = false
    }
  }
}

print(isPrime)

