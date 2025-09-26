// solution.swift

import Foundation

func plusMinus(arr: [Int]) {
    var pos = 0, neg = 0, zero = 0
    for num in arr {
        if num > 0 {
            pos += 1
        } else if num < 0 {
            neg += 1
        } else {
            zero += 1
        }
    }
    
    let n = Double(arr.count)
    let posRatio = Double(pos) / n
    let negRatio = Double(neg) / n
    let zeroRatio = Double(zero) / n
    
    print(String(format: "%.6f", posRatio))
    print(String(format: "%.6f", negRatio))
    print(String(format: "%.6f", zeroRatio))
}

// --- demo run ---
plusMinus(arr: [-4, 3, -9, 0, 4, 1])
// Expected output:
// 0.500000
// 0.333333
// 0.166667