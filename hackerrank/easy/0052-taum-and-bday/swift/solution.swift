// solution.swift

import Foundation

func taumBday(b: Int, w: Int, bc: Int, wc: Int, z: Int) -> Int {
    // Use Int64 internally to avoid overflow on large inputs
    let B = Int64(b)
    let W = Int64(w)
    let BC = Int64(bc)
    let WC = Int64(wc)
    let Z = Int64(z)

    let effectiveBc = min(BC, WC + Z)
    let effectiveWc = min(WC, BC + Z)

    return Int(B * effectiveBc + W * effectiveWc)
}

// --- demo run ---
let testsSwift = [
    (10, 10, 1, 1, 1),  // 20
    (5, 9, 2, 3, 4),    // 37
    (3, 6, 9, 1, 1),    // 12
    (7, 7, 4, 2, 1),    // 35
    (3, 3, 1, 9, 2)     // 12
]

for (b, w, bc, wc, z) in testsSwift {
    print(taumBday(b: b, w: w, bc: bc, wc: wc, z: z))
}
