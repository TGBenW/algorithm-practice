// solution.swift

func simpleArraySum(ar: [Int]) -> Int {
    return ar.reduce(0, +)
}

// --- demo run ---
let arr = [1, 2, 3, 4, 10, 11]
print(simpleArraySum(ar: arr))  // 31