// solution.swift

import Foundation

// Sums four of five integers and prints minSum maxSum (space-separated).
// Uses Int64 for safe accumulation.
func miniMaxSum(arr: [Int]) {
    precondition(arr.count == 5, "Array must contain exactly 5 elements")
    let sorted = arr.sorted()
    let minSum: Int64 = sorted.prefix(4).reduce(0) { Int64($0) + Int64($1) }
    let maxSum: Int64 = sorted.suffix(4).reduce(0) { Int64($0) + Int64($1) }
    print("\(minSum) \(maxSum)")
}

// --- demo run ---
miniMaxSum(arr: [1, 2, 3, 4, 5])  // Expected: 10 14