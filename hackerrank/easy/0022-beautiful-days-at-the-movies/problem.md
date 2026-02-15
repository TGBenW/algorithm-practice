---
platform: hackerrank
id: 0022
slug: beautiful-days-at-the-movies
difficulty: easy
tags: [math, implementation, loops]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/beautiful-days-at-the-movies/problem
date: 2025-10-11
time_spent_min:
---

**Summary**  
Given start day `i`, end day `j`, and divisor `k`, find how many days `x` in `[i, j]` satisfy:  
`abs(x - reverse(x)) % k == 0`.  
A day is *beautiful* if this condition holds.

**Approach**  
1. Iterate all days in range `[i...j]`.  
2. Reverse the current day number.  
3. Check divisibility of their absolute difference by `k`.  
4. Count how many satisfy the condition.

**Examples**  
- `i=20, j=23, k=6` → 2 (days 20, 22 are beautiful)
