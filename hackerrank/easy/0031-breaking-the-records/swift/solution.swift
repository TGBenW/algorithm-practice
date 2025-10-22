// solution.swift

func breakingRecords(scores: [Int]) -> [Int] {
    guard !scores.isEmpty else { return [0, 0] }
    var curMin = scores[0]
    var curMax = scores[0]
    var minBreaks = 0
    var maxBreaks = 0

    for i in 1..<scores.count {
        let s = scores[i]
        if s > curMax {
            curMax = s
            maxBreaks += 1
        } else if s < curMin {
            curMin = s
            minBreaks += 1
        }
    }
    return [maxBreaks, minBreaks]
}

// --- demo run (samples) ---
print(breakingRecords(scores: [10, 5, 20, 20, 4, 5, 2, 25, 1])) // [2, 4]
print(breakingRecords(scores: [3, 4, 21, 36, 10, 28, 35, 5, 24, 42])) // [4, 0]