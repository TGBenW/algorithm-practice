// solution.swift

import Foundation

func squares(a: Int, b: Int) -> Int {
    let start = Int(ceil(sqrt(Double(a))))
    let end   = Int(floor(sqrt(Double(b))))
    return max(0, end - start + 1)
}

// --- demo runs ---
print(squares(a: 3,  b: 9))   // 2
print(squares(a: 17, b: 24))  // 0
print(squares(a: 1,  b: 1))   // 1