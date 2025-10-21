// solution.swift

func toys(w: [Int]) -> Int {
    guard !w.isEmpty else { return 0 }
    let sorted = w.sorted()
    var containers = 1
    var base = sorted[0]

    for weight in sorted {
        if weight > base + 4 {
            containers += 1
            base = weight
        }
    }
    return containers
}

// --- demo run (sample) ---
let sample = [1, 2, 3, 21, 7, 12, 14, 21]
print(toys(w: sample)) // 4