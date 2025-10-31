// solution.swift

import Foundation

func nonDivisibleSubset(k: Int, s: [Int]) -> Int {
    guard k > 0 else { return 0 }
    var remainderCounts = Array(repeating: 0, count: k)
    for number in s {
        remainderCounts[number % k] += 1
    }

    var count = min(remainderCounts[0], 1)

    // Pair i with k - i; only take the larger bucket
    if k > 1 {
        for i in 1..<((k + 1) / 2) {
            count += max(remainderCounts[i], remainderCounts[k - i])
        }
        // Special case: when k is even, remainder k/2 contributes at most one
        if k % 2 == 0 {
            count += min(remainderCounts[k / 2], 1)
        }
    }

    return count
}

// --- demo runs ---
print(nonDivisibleSubset(k: 3, s: [1,7,2,4]))                // 3
print(nonDivisibleSubset(k: 4, s: [19,10,12,10,24,25,22]))   // 3