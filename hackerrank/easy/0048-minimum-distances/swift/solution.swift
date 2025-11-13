// solution.swift

import Foundation

func minimumDistances(a: [Int]) -> Int {
    var lastIndex: [Int: Int] = [:]
    var minDistance: Int? = nil

    for (i, v) in a.enumerated() {
        if let prev = lastIndex[v] {
            let d = i - prev
            if let cur = minDistance {
                minDistance = min(cur, d)
            } else {
                minDistance = d
            }
            if minDistance == 1 { return 1 } // early exit: cannot be smaller
        }
        lastIndex[v] = i
    }

    return minDistance ?? -1
}

// --- demo run ---
let demo1 = [7, 1, 3, 4, 1, 7]
print(minimumDistances(a: demo1)) // Expected: 3

let demo2 = [1, 2, 3]
print(minimumDistances(a: demo2)) // Expected: -1

let demo3 = [5, 5, 5]
print(minimumDistances(a: demo3)) // Expected: 1