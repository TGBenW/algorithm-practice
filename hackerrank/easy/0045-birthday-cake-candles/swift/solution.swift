// solution.swift

import Foundation

func birthdayCakeCandles(candles: [Int]) -> Int {
    guard let tallest = candles.max() else { return 0 }
    return candles.filter { $0 == tallest }.count
}

// --- demo run ---
print(birthdayCakeCandles(candles: [3, 2, 1, 3]))  // Expected: 2
print(birthdayCakeCandles(candles: [4, 4, 1, 3, 4]))  // Expected: 3