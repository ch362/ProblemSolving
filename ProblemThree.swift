//: Playground - noun: a place where people can play

import Foundation

/**
Generates the fibonacci sequence up to a specified index.

:param: count The highest n index of the sequence to include.

:returns: The sequence as an array of Doubles.
*/
func fib(count: Double) -> [Double] {
    // Double used for sizes.
    var sequence: [Double] = [0, 1]
    
    while sequence.count < 100 {
        sequence.append(sequence[sequence.count - 2] + sequence[sequence.count - 1])
    }
    return sequence
}

print(fib(100))
