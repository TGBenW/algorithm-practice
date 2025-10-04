// solution.swift

func formingMagicSquare(s: [[Int]]) -> Int {
    let n = 3

    func siamese(_ n: Int) -> [[Int]] {
        var a = Array(repeating: Array(repeating: 0, count: n), count: n)
        var i = 0, j = n / 2
        for num in 1...(n*n) {
            a[i][j] = num
            let ni = (i - 1 + n) % n
            let nj = (j + 1) % n
            if a[ni][nj] == 0 {
                i = ni; j = nj
            } else {
                i = (i + 1) % n
            }
        }
        return a
    }

    func rotate90(_ m: [[Int]]) -> [[Int]] {
        var r = Array(repeating: Array(repeating: 0, count: n), count: n)
        for i in 0..<n { for j in 0..<n { r[j][n - 1 - i] = m[i][j] } }
        return r
    }

    func mirrorVert(_ m: [[Int]]) -> [[Int]] {
        return m.reversed()
    }

    // build 8 candidates from base Lo Shu
    let base = siamese(n)
    var cands: [[[Int]]] = []
    var cur = base
    for _ in 0..<4 { cands.append(cur); cur = rotate90(cur) }
    cur = mirrorVert(base)
    for _ in 0..<4 { cands.append(cur); cur = rotate90(cur) }

    var best = Int.max
    for m in cands {
        var cost = 0
        for i in 0..<n { for j in 0..<n { cost += abs(s[i][j] - m[i][j]) } }
        if cost < best { best = cost }
    }
    return best
}

// --- demo run ---
let s0 = [[4,9,2],[3,5,7],[8,1,5]]
print(formingMagicSquare(s: s0))  // 1

let s1 = [[4,8,2],[4,5,7],[6,1,6]]
print(formingMagicSquare(s: s1))  // 4