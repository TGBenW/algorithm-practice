// solution.swift

func viralAdvertising(n: Int) -> Int {
    var cumulative = 0
    var shared = 5
    for _ in 1...n {
        let liked = shared / 2
        cumulative += liked
        shared = liked * 3
    }
    return cumulative
}

// --- demo run ---
print(viralAdvertising(n: 3)) // 9
print(viralAdvertising(n: 5)) // 24