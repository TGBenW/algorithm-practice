// solution.swift

func stones(n: Int, a: Int, b: Int) -> [Int] {
    if a == b { return [(n - 1) * a] }
    let low = min(a, b), high = max(a, b)
    var ans: [Int] = []
    // k = number of times we use 'high'
    for k in 0..<(n) {
        let val = (n - 1 - k) * low + k * high
        ans.append(val)
    }
    return ans
}

// --- demo run (from samples) ---
print(stones(n: 3, a: 1, b: 2))     // [2, 3, 4]
print(stones(n: 4, a: 10, b: 100))  // [30, 120, 210, 300]