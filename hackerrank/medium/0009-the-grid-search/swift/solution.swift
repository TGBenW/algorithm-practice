// solution.swift

import Foundation

func gridSearch(G: [String], P: [String]) -> String {
    let R = G.count
    let r = P.count
    guard R > 0, r > 0 else { return "NO" }

    let C = G[0].count
    let c = P[0].count
    if r > R || c > C { return "NO" }

    // Convert all rows to [UInt8] for fast indexed access
    let grid: [[UInt8]] = G.map { Array($0.utf8) }
    let pattern: [[UInt8]] = P.map { Array($0.utf8) }

    for row in 0...(R - r) {
        let gridRow = grid[row]

        // we can only start at columns where there is enough space for c chars
        for col in 0...(C - c) {
            // quick check against first pattern row
            var matchFirst = true
            for j in 0..<c {
                if gridRow[col + j] != pattern[0][j] {
                    matchFirst = false
                    break
                }
            }
            if !matchFirst {
                continue
            }

            var fullMatch = true
            if r > 1 {
                // check remaining rows
                for k in 1..<r {
                    let gridRowK = grid[row + k]
                    let patternRowK = pattern[k]
                    for j in 0..<c {
                        if gridRowK[col + j] != patternRowK[j] {
                            fullMatch = false
                            break
                        }
                    }
                    if !fullMatch {
                        break
                    }
                }
            }

            if fullMatch {
                return "YES"
            }
        }
    }

    return "NO"
}

// --- demo run ---
let G1 = [
    "7283455864",
    "6731158619",
    "8988242643",
    "3830589324",
    "2229505813",
    "5633845374",
    "6473530293",
    "7053106601",
    "0834282956",
    "4607924137"
]
let P1 = [
    "9505",
    "3845",
    "3530"
]
print(gridSearch(G: G1, P: P1)) // Expected: YES

let G2 = [
    "400453592126560",
    "114213133098692",
    "474386082879648",
    "522356951189169",
    "887109450487496",
    "252802633388782",
    "502771484966748",
    "075975207693780",
    "511799789562806",
    "404007454272504",
    "549043809916080",
    "962410809534811",
    "445893523733475",
    "768705303214174",
    "650629270887160"
]
let P2 = [
    "99",
    "99"
]
print(gridSearch(G: G2, P: P2)) // Expected: NO
