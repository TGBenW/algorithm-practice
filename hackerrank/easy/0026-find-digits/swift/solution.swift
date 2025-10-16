// solution.swift

func findDigits(n: Int) -> Int {
    let digits = String(n).compactMap { $0.wholeNumberValue }
    var count = 0
    for d in digits {
        if d != 0 && n % d == 0 {
            count += 1
        }
    }
    return count
}

// --- demo run (from sample) ---
print(findDigits(n: 12))   // 2
print(findDigits(n: 1012)) // 3