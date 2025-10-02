// solution.swift

func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
    let ks = keyboards.sorted()
    let ds = drives.sorted(by: >)
    var i = 0
    var j = 0
    var best = -1

    while i < ks.count && j < ds.count {
        let s = ks[i] + ds[j]
        if s > b {
            j += 1    // too expensive, try cheaper drive
        } else {
            if s > best { best = s }
            i += 1    // try a pricier keyboard
        }
    }
    return best
}

// --- demo run ---
print(getMoneySpent(keyboards: [3, 1], drives: [5, 2, 8], b: 10))   // 9
print(getMoneySpent(keyboards: [4], drives: [5], b: 5))   // -1