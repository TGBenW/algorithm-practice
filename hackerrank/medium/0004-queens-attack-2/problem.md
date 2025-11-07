---
platform: hackerrank
id: 0004
slug: queens-attack-2
difficulty: medium
tags: [implementation, chess, geometry, obstacles, direction-vectors]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/queens-attack-2/problem
date: 2025-11-07
time_spent_min:
---

## Queen's Attack II

You are given an `n x n` chessboard with a queen at `(r_q, c_q)` and `k` obstacles.
Compute how many squares the queen can attack considering 8 directions:
up, down, left, right, and four diagonals. Obstacles block further squares
beyond them along their ray.

### Approach

1. Precompute the **maximum steps** the queen can move in each of the 8 directions
   if there were **no obstacles**.
2. For each obstacle:
   - If it lies on the same row/column/diagonal as the queen,
     update the corresponding direction's maximum steps to stop **just before** the obstacle.
3. Sum the steps across all directions.

This yields **O(k)** time and O(1) extra space (besides the obstacle list),
since we only maintain 8 directional limits.

### Complexity
- **Time:** O(k)
- **Space:** O(1)

### Example
- `n=5, k=3, (r_q,c_q)=(4,3), obstacles={(5,5),(4,2),(2,3)}`
- Result: `10`
