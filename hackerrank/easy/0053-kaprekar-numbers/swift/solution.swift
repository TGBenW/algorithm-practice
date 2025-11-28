// solution.swift

import Foundation

func kaprekarNumbers(p: Int, q: Int) -> Void {
    var result: [String] = []

    for number in p...q {
        let d = String(number).count

        // Use Int64 to be safe when squaring
        let sq = Int64(number) * Int64(number)
        let sqStr = String(sq)

        let rightLength = d

        // Right part: last d characters (or the whole string if shorter)
        let rightStartIndex = sqStr.index(sqStr.endIndex, offsetBy: -min(rightLength, sqStr.count))
        let rightPart = String(sqStr[rightStartIndex..<sqStr.endIndex])

        // Left part: remaining prefix (could be empty)
        let leftPart = String(sqStr[sqStr.startIndex..<rightStartIndex])

        let rightVal = Int(rightPart) ?? 0
        let leftVal = Int(leftPart) ?? 0

        if leftVal + rightVal == number {
            result.append(String(number))
        }
    }

    if result.isEmpty {
        print("INVALID RANGE")
    } else {
        print(result.joined(separator: " "))
    }
}

// --- demo run ---
kaprekarNumbers(p: 1, q: 100)  // Expected: 1 9 45 55 99
