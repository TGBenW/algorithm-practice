// solution.swift

func pickingNumbers(a: [Int]) -> Int {
    var freq: [Int: Int] = [:]
    for v in a { freq[v, default: 0] += 1 }
    var best = 0
    for (x, cnt) in freq {
        let withNext = cnt + (freq[x + 1] ?? 0)
        if withNext > best { best = withNext }
    }
    return best
}

// --- demo run ---
print(pickingNumbers(a: [4, 6, 5, 3, 3, 1]))      // 3
print(pickingNumbers(a: [1, 2, 2, 3, 1, 2]))      // 5