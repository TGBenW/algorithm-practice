// solution.swift

func saveThePrisoner(n: Int, m: Int, s: Int) -> Int {
    let x = (s + m - 1) % n
    return x == 0 ? n : x
}

// --- demo run ---
print(saveThePrisoner(n: 5, m: 2, s: 1))  // 2
print(saveThePrisoner(n: 5, m: 2, s: 2))  // 3
print(saveThePrisoner(n: 7, m: 19, s: 2)) // 6
print(saveThePrisoner(n: 3, m: 7, s: 3))  // 3