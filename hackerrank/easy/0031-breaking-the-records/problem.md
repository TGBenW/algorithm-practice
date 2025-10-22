---
platform: hackerrank
id: 0031
slug: breaking-the-records
difficulty: easy
tags: [arrays, simulation]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem
date: 2025-10-09
time_spent_min:
---

**Summary**  
Given a season's scores, starting from game 0, count how many times the player breaks the **maximum** and **minimum** season records. Game 0 sets both initial records.

**Approach**  
Iterate from i=1..n-1, track `curMax`, `curMin`, and increment counters whenever a score is strictly `>` `curMax` or `<` `curMin`.

**Complexity**  
`O(n)` time, `O(1)` extra space.

**Examples**
- `[10, 5, 20, 20, 4, 5, 2, 25, 1]` → `[2, 4]`
- `[3, 4, 21, 36, 10, 28, 35, 5, 24, 42]` → `[4, 0]`
