---
platform: hackerrank
id: 0038
slug: cut-the-sticks
difficulty: easy
tags: [arrays, simulation, counting]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/cut-the-sticks/problem
date: 2025-10-30
time_spent_min:
---

## Summary
You are given stick lengths. Repeatedly:
1) Find the shortest positive length `m`.
2) Cut `m` from every stick of length ≥ `m`.
3) Discard any sticks that become `0`.

Return how many sticks exist **before** each cut, until none remain.

## Approach
Sort once and count how many sticks drop out at each unique length.
- After sorting ascending, the number of sticks before cutting at a position `i` equals `n - i` when `arr[i]` is a new unique length compared to `arr[i-1]`.
- We can also do it via frequency map; both yield the same result.

### Complexity
- Time: `O(n log n)` due to the initial sort.
- Space: `O(1)` (ignoring output) with the sort-in-place approach.

## Examples
Input: `arr = [5,4,4,2,2,8]`  
Unique breakpoints: `2,4,5,8`  
Counts before each cut: `6,4,2,1`
