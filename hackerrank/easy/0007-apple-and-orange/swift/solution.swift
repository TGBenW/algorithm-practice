// solution.swift

func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> (Int, Int) {
    let applePositions = apples.map { a + $0 }
    let orangePositions = oranges.map { b + $0 }
    let applesOnHouse = applePositions.filter { s <= $0 && $0 <= t }.count
    let orangesOnHouse = orangePositions.filter { s <= $0 && $0 <= t }.count
    return (applesOnHouse, orangesOnHouse)
}

// --- demo run ---
let s = 7, t = 11, a = 5, b = 15
let apples = [-2, 2, 1]
let oranges = [5, -6]
let (apCnt, orCnt) = countApplesAndOranges(s: s, t: t, a: a, b: b, apples: apples, oranges: oranges)
print(apCnt)  // 1
print(orCnt)  // 1