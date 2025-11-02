// solution.swift

import Foundation

func jumpingOnClouds(c: [Int]) -> Int {
    var jumps = 0
    var i = 0
    while i < c.count - 1 {
        if i + 2 < c.count && c[i + 2] == 0 {
            i += 2
        } else {
            i += 1
        }
        jumps += 1
    }
    return jumps
}

// --- demo runs ---
print(jumpingOnClouds(c: [0, 0, 1, 0, 0, 1, 0])) // 4
print(jumpingOnClouds(c: [0, 0, 0, 0, 1, 0]))    // 3