// solution.swift

import Foundation

func queensAttack(n: Int, k: Int, r_q: Int, c_q: Int, obstacles: [[Int]]) -> Int {
    // Direction indices:
    // 0: up, 1: down, 2: right, 3: left,
    // 4: up-right, 5: up-left, 6: down-right, 7: down-left

    var maxSteps = [
        n - r_q,            // up
        r_q - 1,            // down
        n - c_q,            // right
        c_q - 1,            // left
        min(n - r_q, n - c_q),  // up-right
        min(n - r_q, c_q - 1),  // up-left
        min(r_q - 1, n - c_q),  // down-right
        min(r_q - 1, c_q - 1)   // down-left
    ]

    // Adjust with obstacles
    for obs in obstacles {
        let r_o = obs[0], c_o = obs[1]

        if r_o == r_q {
            // same row
            if c_o < c_q {
                // left
                maxSteps[3] = min(maxSteps[3], c_q - c_o - 1)
            } else if c_o > c_q {
                // right
                maxSteps[2] = min(maxSteps[2], c_o - c_q - 1)
            }
        } else if c_o == c_q {
            // same column
            if r_o < r_q {
                // down
                maxSteps[1] = min(maxSteps[1], r_q - r_o - 1)
            } else if r_o > r_q {
                // up
                maxSteps[0] = min(maxSteps[0], r_o - r_q - 1)
            }
        } else if abs(r_o - r_q) == abs(c_o - c_q) {
            // diagonal
            if r_o > r_q && c_o > c_q {
                // up-right
                maxSteps[4] = min(maxSteps[4], r_o - r_q - 1)
            } else if r_o > r_q && c_o < c_q {
                // up-left
                maxSteps[5] = min(maxSteps[5], r_o - r_q - 1)
            } else if r_o < r_q && c_o > c_q {
                // down-right
                maxSteps[6] = min(maxSteps[6], r_q - r_o - 1)
            } else {
                // down-left
                maxSteps[7] = min(maxSteps[7], r_q - r_o - 1)
            }
        }
    }

    return maxSteps.reduce(0, +)
}

// --- demo runs ---
print(queensAttack(n: 4, k: 0, r_q: 4, c_q: 4, obstacles: []))                         // 9
print(queensAttack(n: 5, k: 3, r_q: 4, c_q: 3, obstacles: [[5,5],[4,2],[2,3]]))         // 10
print(queensAttack(n: 1, k: 0, r_q: 1, c_q: 1, obstacles: []))                           // 0