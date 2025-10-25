// solution.swift

func migratoryBirds(arr: [Int]) -> Int {
    guard !arr.isEmpty else { return 0 } // or 1 depending on platform expectations
    var freq = [Int](repeating: 0, count: 5) // ids are 1..5
    for id in arr {
        if 1...5 ~= id { freq[id - 1] += 1 }
    }
    let maxCount = freq.max() ?? 0
    // firstIndex ensures lowest id on ties
    return (freq.firstIndex(of: maxCount) ?? 0) + 1
}

// --- demo runs (samples) ---
print(migratoryBirds(arr: [1, 4, 4, 4, 5, 3]))                // 4
print(migratoryBirds(arr: [1,2,3,4,5,4,3,2,1,3,4]))          // 3