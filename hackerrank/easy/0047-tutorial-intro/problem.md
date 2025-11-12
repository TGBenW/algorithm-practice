---
platform: hackerrank
id: 0041
slug: tutorial-intro
difficulty: easy
tags: [search, binary-search, arrays, fundamentals]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/tutorial-intro/problem
date: 2025-11-10
time_spent_min:
---

## Tutorial Intro

Given a sorted array `arr` and an integer `V`, return the index of `V` in `arr`.

### Approach
Use **binary search**:
- Compare the middle element with `V`.
- If equal — return index.
- If smaller — search right half.
- If larger — search left half.
Since `V` occurs exactly once, we always find a single valid index.

### Complexity
- **Time:** O(log n)
- **Space:** O(1)

### Example
Input:
V = 4
arr = [1, 4, 5, 7, 9, 12]

Output:
1