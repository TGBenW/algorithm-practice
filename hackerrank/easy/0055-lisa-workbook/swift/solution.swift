// solution.swift

import Foundation

func workbook(n: Int, k: Int, arr: [Int]) -> Int {
    var lastCountedPage = 0
    var specialProblemCount = 0

    for chapter in arr {
        let startPage = lastCountedPage + 1
        let totalPages = (chapter + k - 1) / k
        lastCountedPage += totalPages

        for i in 1...chapter {
            let pageNumber = startPage + (i - 1) / k
            if i == pageNumber {
                specialProblemCount += 1
            }
        }
    }

    return specialProblemCount
}

// --- demo run ---
let nSample = 5
let kSample = 3
let arrSample = [4, 2, 6, 1, 10] // Expected: 4
print(workbook(n: nSample, k: kSample, arr: arrSample))
