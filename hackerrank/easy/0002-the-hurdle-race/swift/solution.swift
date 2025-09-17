// solution.swift

func hurdleRace(k: Int, height: [Int]) -> Int {
    let maxHurdle = height.max() ?? 0
    return k >= maxHurdle ? 0 : maxHurdle - k
}

// --- demo run ---
let k = 4
let hurdles = [1, 6, 3, 5, 2]
print(hurdleRace(k: k, height: hurdles))  // 2