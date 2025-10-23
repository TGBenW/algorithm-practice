// solution.swift

func birthday(s: [Int], d: Int, m: Int) -> Int {
    guard s.count >= m else { return 0 }
    var count = 0
    for i in 0...(s.count - m) {
        var sum = 0
        for j in 0..<m {
            sum += s[i + j]
        }
        if sum == d { count += 1 }
    }
    return count
}

// --- demo run (samples) ---
print(birthday(s: [1, 2, 1, 3, 2], d: 3, m: 2))  // 2
print(birthday(s: [1, 1, 1, 1, 1, 1], d: 3, m: 2))  // 0
print(birthday(s: [4], d: 4, m: 1))  // 1