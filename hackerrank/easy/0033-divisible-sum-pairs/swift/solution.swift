// solution.swift

func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
    var result = 0
    var remainderCounts = [Int](repeating: 0, count: k)

    for number in ar {
        remainderCounts[number % k] += 1
    }

    // pairs with remainder 0
    result += remainderCounts[0] * (remainderCounts[0] - 1) / 2

    // pairs of (i, k - i)
    for i in 1..<(k / 2) + (k % 2) {
        result += remainderCounts[i] * remainderCounts[k - i]
    }

    // handle middle remainder if k is even
    if k % 2 == 0 {
        result += remainderCounts[k / 2] * (remainderCounts[k / 2] - 1) / 2
    }

    return result
}

// --- demo run (sample) ---
print(divisibleSumPairs(n: 6, k: 3, ar: [1, 3, 2, 6, 1, 2])) // 5