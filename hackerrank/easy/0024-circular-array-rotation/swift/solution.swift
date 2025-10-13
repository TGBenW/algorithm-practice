// solution.swift

func circularArrayRotation(a: [Int], k: Int, queries: [Int]) -> [Int] {
    let n = a.count
    guard n > 0 else { return [] }
    let r = k % n
    return queries.map { q in
        a[(q - r + n) % n]
    }
}

// --- demo run (from sample) ---
let a0 = [1, 2, 3]
let k0 = 2
let queries0 = [0, 1, 2]
print(circularArrayRotation(a: a0, k: k0, queries: queries0)) // [2, 3, 1]