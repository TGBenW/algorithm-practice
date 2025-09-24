// solution.swift

func aVeryBigSum(ar: [Int]) -> Int {
    return ar.reduce(0, +)
}

// --- demo run ---
let arr = [1_000_000_001, 1_000_000_002, 1_000_000_003, 1_000_000_004, 1_000_000_005]
print(aVeryBigSum(ar: arr))  // 5000000015