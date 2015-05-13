//: Playground - noun: a place where people can play

import Foundation

/**
Sorts the numbers in to order in terms of the size of the first digit (i.e. 9 is greater than 10, because 9 is greater than 1.

:param: first  The first number to compare.
:param: second The second number to compare.

:returns: Boolean indicating if they are correctly sorted.
*/
func sort(first: Int, second: Int) -> Bool {
    if first < 10 {
        if first < second {
            return first < second
        } else {
            return first > second
        }
    }
    return first > second
}

/**
Finds the largest possible number (not the sum).

:param: list The numbers to use.

:returns: Concatenated string showing the max number.
*/
func maxSum(list: [Int]) -> String {
    var sortedList: [Int] = sorted(list, sort)
    var total = ""
    for i in 0 ... sortedList.count - 1 {
        total += String(sortedList[i])
    }
    return total
}

let numbers = [10, 2, 3, 4, 52, 5, 98, 4, 8]
maxSum(numbers)
