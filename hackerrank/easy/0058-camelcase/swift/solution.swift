// solution.swift

import Foundation

func camelcase(s: String) -> Int {
    guard !s.isEmpty else { return 0 }

    var result = 1
    for char in s {
        if char.isUppercase {
            result += 1
        }
    }
    return result
}

// --- demo run ---
let sample = "saveChangesInTheEditor" // Expected: 5
print(camelcase(s: sample))
