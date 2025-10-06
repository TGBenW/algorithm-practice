// solution.swift

func climbingLeaderboard(ranked: [Int], player: [Int]) -> [Int] {
    let sortedRankArray = Array(Set(ranked)).sorted(by: >)
    var result = [Int]()

    func binaryRankSearch(score: Int, ranking: [Int]) -> Int {
        var low = 0
        var high = ranking.count - 1

        while low <= high {
            let mid = (low + high) / 2
            if ranking[mid] == score {
                return mid + 1
            } else if ranking[mid] > score {
                low = mid + 1
            } else {
                high = mid - 1
            }
        }
        return low + 1
    }

    for score in player {
        result.append(binaryRankSearch(score: score, ranking: sortedRankArray))
    }
    return result
}

// --- demo run ---
let ranked = [100, 100, 50, 40, 40, 20, 10]
let player = [5, 25, 50, 120]
print(climbingLeaderboard(ranked: ranked, player: player))   // [6, 4, 2, 1]