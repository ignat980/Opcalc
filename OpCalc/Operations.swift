//
//  Operations.swift
//  OpCalc
//
//  Created by Ignat Remizov on 8/22/14.
//  Copyright (c) 2014 Fuzz Productions. All rights reserved.
//

import Foundation

//MARK: - Operators: -


infix operator ≠ {}
infix operator ∑ {}
infix operator ≈ {}
infix operator ÷ {}
infix operator › {}
prefix operator ≈ {}
postfix operator ‼ {}
prefix operator √ {}

//MARK: Constants
let π = 3.1415926535897932384626433832795
let Phi = 1.6180339887498948//482045868343656;
let phi = 1/Phi

//MARK: Is not equal to
func ≠ (item1:Int, item2:Int) -> Bool
{
    return item1 == item2 ? false : true
}


//MARK: Approximate
func ≈ (item1:Double, item2:Double) -> Bool {
    if (item1 + 0.5 > item2 && item1 < item2) || (item1 - 0.5 < item2 && item1 > item2){
        return true
    } else {
        return false
    }
}

//MARK: Rounding
func › (value:Double, nearest:Double) -> Double {
    return round(nearest * value) / nearest
}

//MARK: Division ;3
func ÷ (item1:Double, item2:Double) -> Double {
    return item1 / item2
}

//MARK: Summation
func ∑ (rightStartAndEnd:(Double,Double), Ival:(Double) -> Double) -> Double {
    let (start,end) = rightStartAndEnd
    var total:Double = 0
    for (var i = start; i <= end; i++) {
        total += Ival(i)
    }
    return total
}


func fibonnaciNumberAtIndex (e:Double) -> Double {
    return (pow(Phi,e) - pow(-phi,e)) / (Phi - -phi)
}



//MARK: Factorial
postfix func ‼ (number:Double) -> Double {
    var sum:Double = number
    for (var i = number - 1; i > 0; i--) {
        sum *= i
    }
    return sum
}

//MARK: Square root
prefix func √ (item:Double) -> Double {
    return sqrt(item)
}

