// solution.swift

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var res = [0, 0] // [Alice, Bob]
    for i in 0..<a.count {
        if a[i] > b[i] { res[0] += 1 }
        else if a[i] < b[i] { res[1] += 1 }
    }
    return res
}

// --- demo run ---
print(compareTriplets(a: [5,6,7], b: [3,6,10]))   // [1, 1]
print(compareTriplets(a: [17,28,30], b: [99,16,8])) // [2, 1]