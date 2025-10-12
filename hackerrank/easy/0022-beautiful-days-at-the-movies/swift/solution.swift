// solution.swift

func beautifulDays(i: Int, j: Int, k: Int) -> Int {
    func reverseNumber(_ num: Int) -> Int {
        var n = num
        var reversed = 0
        while n > 0 {
            reversed = reversed * 10 + n % 10
            n /= 10
        }
        return reversed
    }
    
    var count = 0
    for day in i...j {
        if abs(day - reverseNumber(day)) % k == 0 {
            count += 1
        }
    }
    return count
}

// --- demo run ---
print(beautifulDays(i: 20, j: 23, k: 6)) // 2
print(beautifulDays(i: 10, j: 13, k: 3)) // 2