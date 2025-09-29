// solution.swift

func sockMerchant(n: Int, ar: [Int]) -> Int {
    var counts: [Int: Int] = [:]
    for color in ar {
        counts[color, default: 0] += 1
    }
    return counts.values.reduce(0) { $0 + $1 / 2 }
}

// --- demo run ---
let arr = [10, 20, 20, 10, 10, 30, 50, 10, 20]
print(sockMerchant(n: arr.count, ar: arr))  // 3