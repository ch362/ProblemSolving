/: Playground - noun: a place where people can play

import Foundation

// Sum = 360
let someNumbers = [5, 10, 3, 4, 92, 45, 0, 45, 43, 1, 2, 1, 9, 100]

/**
Computes the sum of numbers in a given list using a for-loop.

:param: numbers An array of integers to use in the calculations.

:returns: Sum of the numbers as an integer.
*/
func forSumOf(numbers: [Int]) -> Int {
    var total = 0
    for i in 0 ... numbers.count - 1 {
        total += numbers[i]
    }
    return total
}

/**
Computes the sum of numbers in a given list using a while-loop.

:param: numbers An array of integers to use in the calculations.

:returns: Sum of the numbers as an integer.
*/
func whileSumOf(numbers: [Int]) -> Int {
    var total = 0
    var count = 0
    while count <= numbers.count - 1 {
        total += numbers[count]
        count++
    }
    return total
}

/**
Computes the sum of numbers in a given list using recursion.

:param: numbers An array of integers to use in the calculations.

:returns: Sum of the numbers as an integer.
*/
func recursiveSumOf(numbers: [Int], total: Int = 0) -> Int {
    if let firstNumber = numbers.first {
        var others = Array(dropFirst(numbers))
        return recursiveSumOf(others, total: total + firstNumber)
    } else {
        return total
    }
}

let total1 = forSumOf(someNumbers)
let total2 = whileSumOf(someNumbers)
let total3 = recursiveSumOf(someNumbers)
