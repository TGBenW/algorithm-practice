// solution.swift

import Foundation

func fairRations(B: [Int]) -> String {
    let oddCount = B.filter { $0 % 2 != 0 }.count

    var array = B
    var loavesDistributed = 0

    if oddCount % 2 == 1 {
        return "NO"
    } else {
        for i in 0..<array.count - 1 {
            if array[i] % 2 != 0 {
                array[i] += 1
                array[i + 1] += 1
                loavesDistributed += 2
            }
        }
        return String(loavesDistributed)
    }
}

// --- demo run ---
let sample1 = [2, 3, 4, 5, 6]   // Expected: "4"
print(fairRations(B: sample1))

let sample2 = [1, 2]            // Expected: "NO"
print(fairRations(B: sample2))
