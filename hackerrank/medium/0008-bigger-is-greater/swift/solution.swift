// solution.swift

import Foundation

func biggerIsGreater(w: String) -> String {
    var chars = Array(w)
    if chars.count < 2 { return "no answer" }

    var i = chars.count - 2

    // Find pivot: rightmost position where chars[i] < chars[i+1]
    while i >= 0 && chars[i] >= chars[i + 1] {
        i -= 1
    }

    if i == -1 {
        return "no answer"
    }

    // Find rightmost character greater than chars[i]
    var j = chars.count - 1
    while chars[j] <= chars[i] {
        j -= 1
    }

    // Swap pivot with that character
    chars.swapAt(i, j)

    // Reverse the suffix starting at i+1
    let suffixStart = i + 1
    let suffixEnd = chars.count - 1
    let reversedSuffix = chars[suffixStart...suffixEnd].reversed()
    chars.replaceSubrange(suffixStart...suffixEnd, with: reversedSuffix)

    return String(chars)
}

// --- demo run ---
let testsSwift = [
    "ab",
    "bb",
    "hefg",
    "dhck",
    "dkhc",
    "lmno",
    "dcba",
    "dcbb",
    "abdc",
    "abcd",
    "fedcbabcd"
]

for t in testsSwift {
    print("\(t) -> \(biggerIsGreater(w: t))")
}
