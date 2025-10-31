---
platform: hackerrank
id: 0003
slug: non-divisible-subset
difficulty: medium
tags: [math, modular-arithmetic, combinatorics, greedy]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/non-divisible-subset/problem
date: 2025-10-30
time_spent_min:
---

## Summary
Given a set `S` of distinct integers and an integer `k`, find the largest subset size such that the sum of any two numbers in the subset is **not** divisible by `k`.

## Approach
1. Bucket elements by remainder `r = x % k`.
2. At most **one** element from remainder `0` can be included.
3. For each pair of remainders `(i, k - i)`, take the larger bucket.
4. If `k` is even, remainder `k/2` also contributes at most one element.

### Complexity
- **Time:** O(n + k)
- **Space:** O(k)

## Example
S = [1, 7, 2, 4], k = 3
remainders: [1, 1, 2, 1] -> counts: [0:0, 1:2, 2:2]
Pick max(count[1], count[2]) = 2, plus up to one from remainder 0 = 0
Answer = 3