// solution.swift

func diagonalDifference(arr: [[Int]]) -> Int {
    var leftDiagonal = 0
    var rightDiagonal = 0
    for i in 0..<arr.count {
        leftDiagonal += arr[i][i]
        rightDiagonal += arr[i][arr.count - 1 - i]
    }
    return abs(leftDiagonal - rightDiagonal)
}

// --- demo run ---
let matrix = [
    [11, 2, 4],
    [4, 5, 6],
    [10, 8, -12]
]
print(diagonalDifference(arr: matrix))  // 15