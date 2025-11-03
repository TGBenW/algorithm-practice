// solution.swift

import Foundation

func serviceLane(width: [Int], cases: [[Int]]) -> [Int] {
    var result: [Int] = []
    for pair in cases {
        let start = pair[0]
        let end = pair[1]
        let minimalValue = width[start...end].min()!
        result.append(minimalValue)
    }
    return result
}

// --- demo runs ---
let width = [2, 3, 1, 2, 3, 2, 3, 3]
let testCases = [
    [0, 3],
    [4, 6],
    [6, 7],
    [3, 5],
    [0, 7]
]
print(serviceLane(width: width, cases: testCases)) // [1, 2, 3, 2, 1]