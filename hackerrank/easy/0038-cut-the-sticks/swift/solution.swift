// solution.swift

func cutTheSticks(arr: [Int]) -> [Int] {
    if arr.isEmpty { return [] }
    let sorted = arr.sorted()
    var result: [Int] = []
    var i = 0
    while i < sorted.count {
        result.append(sorted.count - i)
        let current = sorted[i]
        // skip all sticks equal to current (they become 0 and are discarded)
        while i < sorted.count && sorted[i] == current {
            i += 1
        }
    }
    return result
}

// --- demo runs ---
print(cutTheSticks(arr: [5,4,4,2,2,8])) // [6, 4, 2, 1]
print(cutTheSticks(arr: [1,2,3,4,3,3,2,1])) // [8, 6, 4, 1]