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
prefix operator ∑… {}
prefix operator ‼ {}
prefix operator √ {}

//MARK: Is not equal to
func ≠ (item1:Int, item2:Int) -> Bool
{
    return item1 == item2 ? false : true
}

let π = 3.14159

//MARK: Sum of array
prefix func ∑… (numbers:[Double]) -> Double {
    
    var sume:Double = 0
    for number in numbers
    {
        sume += number
    }
    return sume
}

//MARK: Approximate
func ≈ (item1:Double, item2:Double) -> Bool {
    if item1 == item2 || (item1 + 0.5 > item2 && item1 < item2) || (item1 - 0.5 < item2 && item1 > item2){
        return true
    } else {
        return false
    }
}

//MARK: Rounding
func › (value:Double, format:String) -> String {
    return NSString(format:format, value)
}

//MARK: Division ;3
func ÷ (item1:Double, item2:Double) -> Double {
    return item1 / item2
}

//MARK: Summation
func ∑ (rightStartAndEnd:(Double,Double), Ival:(Double) -> Double) -> Double
{
    let start = rightStartAndEnd.0
    let end = rightStartAndEnd.1
    var total:Double = 0
    for (var i = start; i <= end; i++) {
        total += Ival(i)
    }
    return total
}

//MARK: Factorial
prefix func ‼ (number:Double) -> Double
{
    var sum:Double = number
    for (var i = number - 1; i > 0; i--)
    {
        sum *= i
    }
    return sum
}

//MARK: Square root
prefix func √ (item:Double) -> Double {
    return sqrt(item)
}


