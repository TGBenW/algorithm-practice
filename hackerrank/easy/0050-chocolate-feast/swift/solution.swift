// solution.swift

import Foundation

func chocolateFeast(n: Int, c: Int, m: Int) -> Int {
    var totalChocolates = n / c
    var wrappers = totalChocolates

    while wrappers >= m {
        let newChocolates = wrappers / m
        totalChocolates += newChocolates
        wrappers = wrappers % m + newChocolates
    }

    return totalChocolates
}

// --- demo run with sample input ---
let t = 3
let tests: [(Int, Int, Int)] = [
    (10, 2, 5), // Expected: 6
    (12, 4, 4), // Expected: 3
    (6, 2, 2)   // Expected: 5
]

for (n, c, m) in tests {
    print(chocolateFeast(n: n, c: c, m: m))
}
