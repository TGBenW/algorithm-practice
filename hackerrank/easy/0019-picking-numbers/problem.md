---
platform: hackerrank
id: 0019
slug: picking-numbers
difficulty: easy
tags: [frequency, arrays]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/picking-numbers/problem
date: 2025-10-05
time_spent_min:
---

**Summary**  
Find the length of the longest subarray such that the absolute difference between any two elements is ≤ 1.

**Approach**  
Count frequencies per value. The best subarray is formed by numbers `x` and `x+1`.  
Answer = `max(freq[x] + freq[x+1])` over all `x`.

**Examples**
- `a = [4, 6, 5, 3, 3, 1]` → `3` (use `[3,3,4]`)  
- `a = [1, 2, 2, 3, 1, 2]` → `5` (use `[1,1,2,2,2]`)
