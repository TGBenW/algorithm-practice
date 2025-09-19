// solution.swift

func permutationEquation(p: [Int]) -> [Int] {
    var resultArray = [Int]()
    for x in 1...p.count {
        let positionOfX = p.firstIndex(of: x)! + 1
        let y = p.firstIndex(of: positionOfX)! + 1
        resultArray.append(y)
    }
    return resultArray
}

// --- demo run ---
let p1 = [2, 3, 1]
print(permutationEquation(p: p1))  // [2, 3, 1]

let p2 = [4, 3, 5, 1, 2]
print(permutationEquation(p: p2))  // [1, 3, 5, 4, 2]