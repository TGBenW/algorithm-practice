// solution.swift

import Foundation

func equalizeArray(arr: [Int]) -> Int {
    var frequency = [Int: Int]()
    for number in arr {
        frequency[number, default: 0] += 1
    }
    let maxFrequency = frequency.values.max() ?? 0
    return arr.count - maxFrequency
}

// --- demo runs ---
print(equalizeArray(arr: [3, 3, 2, 1, 3])) // 2
print(equalizeArray(arr: [1, 2, 2, 3]))    // 2