// solution.swift

func utopianTree(n: Int) -> Int {
    var h = 1
    if n == 0 { return h }
    for cycle in 1...n {
        if cycle % 2 == 1 { // spring (odd)
            h *= 2
        } else {            // summer (even)
            h += 1
        }
    }
    return h
}

// --- demo run ---
print(utopianTree(n: 0))  // 1
print(utopianTree(n: 1))  // 2
print(utopianTree(n: 4))  // 7
print(utopianTree(n: 5))  // 14