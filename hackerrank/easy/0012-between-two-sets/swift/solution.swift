// solution.swift

func getTotalX(a: [Int], b: [Int]) -> Int {
    func gcd(_ p: Int, _ q: Int) -> Int {
        var x = abs(p), y = abs(q)
        while y != 0 { let r = x % y; x = y; y = r }
        return x
    }
    func lcm(_ p: Int, _ q: Int) -> Int {
        if p == 0 || q == 0 { return 0 }
        return p / gcd(p, q) * q
    }
    func gcdOfArray(_ arr: [Int]) -> Int {
        var g = arr[0]
        for v in arr.dropFirst() { g = gcd(g, v) }
        return g
    }
    func lcmOfArray(_ arr: [Int]) -> Int {
        var l = arr[0]
        for v in arr.dropFirst() { l = lcm(l, v) }
        return l
    }

    let L = lcmOfArray(a)
    let G = gcdOfArray(b)
    if L == 0 || G == 0 || G % L != 0 { return 0 }

    var count = 0
    var x = L
    while x <= G {
        if G % x == 0 { count += 1 }
        x += L
    }
    return count
}

// --- demo run ---
let A = [2, 4]
let B = [16, 32, 96]
print(getTotalX(a: A, b: B))  // 3