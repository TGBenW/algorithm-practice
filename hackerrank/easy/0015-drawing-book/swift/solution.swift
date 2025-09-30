// solution.swift

func pageCount(n: Int, p: Int) -> Int {
    return min(p / 2, (n / 2) - (p / 2))
}

// --- demo run ---
print(pageCount(n: 6, p: 2))  // 1
print(pageCount(n: 5, p: 4))  // 0