//: Playground - noun: a place where people can play

import Foundation

/**
Combines two lists.

:param: firstList  The first list
:param: secondList The second list

:returns: The combined list.
*/
func combine(firstList: [AnyObject], secondList: [AnyObject]) -> [AnyObject] {
    var combined: [AnyObject] = []
    
    // This only works if the two lists are the same length; the problem does't state otherwise, so I left the solution as it is.
    for i in 0 ... firstList.count - 1 {
        combined.append(firstList[i])
        combined.append(secondList[i])
    }
    return combined
}

let list1 = ["a", "b", "c"]
let list2 = [1, 2, 3]
let combined = combine(list1, list2)
