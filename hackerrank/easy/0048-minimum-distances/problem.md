---
platform: hackerrank
id: 0042
slug: minimum-distances
difficulty: easy
tags: [arrays, hashing, distances, two-indices]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/minimum-distances/problem
date: 2025-11-10
time_spent_min:
---

## Minimum Distances

Given an array `a`, find the minimum distance between any pair of equal elements (distance = index difference).  
If no equal elements exist, return `-1`.

### Approach
- Keep a dictionary/map `lastIndex` for the last seen position of each value.
- Iterate the array once:
  - If the current value was seen before, compute `i - lastIndex[value]` and update the running minimum.
  - Update `lastIndex[value] = i`.
- If no pair was found, answer is `-1`.

### Complexity
- **Time:** O(n)
- **Space:** O(n)

### Example
a = [7, 1, 3, 4, 1, 7]
pairs:
1: indices 1 and 4 -> distance 3
7: indices 0 and 5 -> distance 5
answer = 3