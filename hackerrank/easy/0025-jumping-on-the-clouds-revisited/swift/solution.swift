// solution.swift

func jumpingOnClouds(c: [Int], k: Int) -> Int {
    var energy = 100
    var pos = 0
    repeat {
        pos = (pos + k) % c.count
        energy -= (c[pos] == 1) ? 3 : 1
    } while pos != 0
    return energy
}

// --- demo run (from sample) ---
let c0 = [0, 0, 1, 0, 0, 1, 1, 0]
print(jumpingOnClouds(c: c0, k: 2)) // 92