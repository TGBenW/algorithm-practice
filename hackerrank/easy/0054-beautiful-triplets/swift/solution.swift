// solution.swift

import Foundation

func beautifulTriplets(d: Int, arr: [Int]) -> Int {
    var tripletCount = 0
    var countDict = [Int: Int]()

    for number in arr {
        if let count2 = countDict[number - 2 * d],
           let count1 = countDict[number - d] {
            tripletCount += count1 * count2
        }
        countDict[number, default: 0] += 1
    }

    return tripletCount
}

// --- demo run ---
let dSample = 3
let arrSample = [1, 2, 4, 5, 7, 8, 10]
// Expected: 3
print(beautifulTriplets(d: dSample, arr: arrSample))
