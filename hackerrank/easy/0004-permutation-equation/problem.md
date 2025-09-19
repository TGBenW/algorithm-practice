---
platform: hackerrank
id: 0004
slug: permutation-equation
difficulty: easy
tags: [implementation, permutation, mapping]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/permutation-equation/problem
date: 2025-09-18
time_spent_min:
---

**Summary**  
Given a permutation `p` of integers from 1 to n, for each `x` in `[1..n]` find `y` such that `p(p(y)) = x`. Return all such `y` values as an array.

**Constraints**  
- `1 ≤ n ≤ 50`  
- `1 ≤ p[i] ≤ 50`  
- Each element in `p` is distinct  

**Examples**  
Input: `p = [2, 3, 1]`  
Output: `[2, 3, 1]`  

Input: `p = [4, 3, 5, 1, 2]`  
Output: `[1, 3, 5, 4, 2]`
