// solution.swift

import Foundation

func flatlandSpaceStations(n: Int, c: [Int]) -> Int {
    let stationCount = c.count
    if stationCount == 0 {
        // Problem constraints say there is at least one station,
        // but this guards against unexpected input.
        return 0
    }

    if stationCount == n {
        return 0
    }

    if stationCount == 1 {
        return max(c[0], (n - 1) - c[0])
    }

    let sortedStations = c.sorted()
    var maxDistance = max(sortedStations[0], (n - 1) - sortedStations[stationCount - 1])

    for i in 1..<stationCount {
        let gap = sortedStations[i] - sortedStations[i - 1]
        let distInGap = gap / 2
        if distInGap > maxDistance {
            maxDistance = distInGap
        }
    }

    return maxDistance
}

// --- demo run ---
let nSample1 = 5
let cSample1 = [0, 4] // Expected: 2
print(flatlandSpaceStations(n: nSample1, c: cSample1))

let nSample2 = 6
let cSample2 = [0, 1, 2, 4, 3, 5] // Expected: 0
print(flatlandSpaceStations(n: nSample2, c: cSample2))
