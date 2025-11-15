// solution.swift

import Foundation

func howManyGames(p: Int, d: Int, m: Int, s: Int) -> Int {
    var gameCount = 0
    var budget = s
    var currentPrice = p

    while budget >= currentPrice {
        budget -= currentPrice
        gameCount += 1
        currentPrice = max(currentPrice - d, m)
    }

    return gameCount
}

// --- demo run ---
let sample1 = howManyGames(p: 20, d: 3, m: 6, s: 80)
print(sample1) // Expected: 6

let sample2 = howManyGames(p: 20, d: 3, m: 6, s: 85)
print(sample2) // Expected: 7

let sample3 = howManyGames(p: 20, d: 3, m: 6, s: 23)
print(sample3) // Small budget test
