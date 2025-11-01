// solution.swift

import Foundation

func repeatedString(s: String, n: Int) -> Int {
    let fullRepeat = n / s.count
    let leftover = n % s.count
    let aFullCount = s.filter { $0 == "a" }.count
    let aLeftoverCount = s.prefix(leftover).filter { $0 == "a" }.count
    return fullRepeat * aFullCount + aLeftoverCount
}

// --- demo runs ---
print(repeatedString(s: "aba", n: 10))          // 7
print(repeatedString(s: "a", n: 1000000000000)) // 1000000000000