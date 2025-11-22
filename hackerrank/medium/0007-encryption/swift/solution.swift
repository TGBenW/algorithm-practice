// solution.swift

import Foundation

func encryption(s: String) -> String {
    let workString = s.replacingOccurrences(of: " ", with: "")
    let workStringLength = workString.count

    let root = Double(workStringLength).squareRoot()
    let encryptionCols = Int(root.rounded(.up))
    let encryptionRows = Int(root.rounded(.down))

    var encryptionMatrix = [String]()

    let adjustedRows = encryptionCols * encryptionRows >= workStringLength
        ? encryptionRows
        : encryptionRows + 1

    var startIndex = workString.startIndex
    for _ in 0..<adjustedRows {
        let endIndex = workString.index(startIndex,
                                        offsetBy: encryptionCols,
                                        limitedBy: workString.endIndex) ?? workString.endIndex
        let substring = workString[startIndex..<endIndex]
        encryptionMatrix.append(String(substring))
        startIndex = endIndex
        if startIndex == workString.endIndex { break }
    }

    var encryptionMessage = Array(repeating: "", count: encryptionCols)
    for col in 0..<encryptionCols {
        for row in 0..<encryptionMatrix.count {
            if col < encryptionMatrix[row].count {
                let rowString = encryptionMatrix[row]
                let idx = rowString.index(rowString.startIndex, offsetBy: col)
                let char = rowString[idx]
                encryptionMessage[col].append(char)
            }
        }
    }

    return encryptionMessage.joined(separator: " ")
}

// --- demo run ---
let sample1 = "haveaniceday"
print(encryption(s: sample1)) // Expected: "hae and via ecy"

let sample2 = "feedthedog"
print(encryption(s: sample2)) // Expected: "fto ehg ee dd"

let sample3 = "chillout"
print(encryption(s: sample3)) // Expected: "clu hlt io"
