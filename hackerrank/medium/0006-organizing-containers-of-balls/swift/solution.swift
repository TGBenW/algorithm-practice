// solution.swift

import Foundation

func organizingContainers(container: [[Int]]) -> String {
    let containerSums = container.map { $0.reduce(0, +) }

    let ballTypeSums = (0..<container[0].count).map { i in
        container.reduce(0) { $0 + $1[i] }
    }

    return containerSums.sorted() == ballTypeSums.sorted() ? "Possible" : "Impossible"
}

// --- demo run (samples) ---
let sample1 = [
    [1, 1],
    [1, 1]
]
print(organizingContainers(container: sample1)) // Expected: Possible

let sample2 = [
    [0, 2],
    [1, 1]
]
print(organizingContainers(container: sample2)) // Expected: Impossible

let sample3 = [
    [1, 3, 1],
    [2, 1, 2],
    [3, 3, 3]
]
print(organizingContainers(container: sample3)) // Expected: Impossible

let sample4 = [
    [0, 2, 1],
    [1, 1, 1],
    [2, 0, 0]
]
print(organizingContainers(container: sample4)) // Expected: Possible