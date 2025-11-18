// solution.swift

import Foundation

func acmTeam(topic: [String]) -> [Int] {
    let n = topic.count
    if n < 2 { return [0, 0] }

    let m = topic[0].count

    let wordCount = (m + 63) / 64
    var masks = Array(repeating: Array(repeating: UInt64(0), count: wordCount), count: n)

    for (idx, s) in topic.enumerated() {
        var bitIndex = 0
        for ch in s {
            if ch == "1" {
                let wordIdx = bitIndex / 64
                let bitPos = bitIndex % 64
                masks[idx][wordIdx] |= (1 << bitPos)
            }
            bitIndex += 1
        }
    }

    var maxKnown = 0
    var teamsCount = 0

    for i in 0..<(n - 1) {
        for j in (i + 1)..<n {
            var known = 0
            for w in 0..<wordCount {
                let combined = masks[i][w] | masks[j][w]
                known += combined.nonzeroBitCount
            }

            if known > maxKnown {
                maxKnown = known
                teamsCount = 1
            } else if known == maxKnown {
                teamsCount += 1
            }
        }
    }

    return [maxKnown, teamsCount]
}

// --- demo run ---
let sampleTopics = [
    "10101",
    "11100",
    "11010",
    "00101"
]
// Expected: [5, 2]
print(acmTeam(topic: sampleTopics))
