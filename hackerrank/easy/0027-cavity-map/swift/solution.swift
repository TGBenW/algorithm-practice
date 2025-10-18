func cavityMap(grid: [String]) -> [String] {
    let n = grid.count
    guard n >= 3 else { return grid } // no inner cells to mark

    // Parse original numeric grid for comparisons
    let origNums: [[Int]] = grid.map { row in
        row.compactMap { $0.wholeNumberValue }
    }

    // Work on a mutable copy for output (as array of Characters)
    var out: [[Character]] = grid.map { Array($0) }

    for i in 1..<(n - 1) {
        for j in 1..<(n - 1) {
            let v = origNums[i][j]
            if v > origNums[i - 1][j] &&
               v > origNums[i + 1][j] &&
               v > origNums[i][j - 1] &&
               v > origNums[i][j + 1] {
                out[i][j] = "X"
            }
        }
    }

    return out.map { String($0) }
}

// --- demo run (from sample) ---
let g0 = ["1112", "1912", "1892", "1234"]
print(cavityMap(grid: g0))
// ["1112", "1X12", "18X2", "1234"]// solution.swift

