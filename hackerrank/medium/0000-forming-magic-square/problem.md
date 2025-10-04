---
platform: hackerrank
id: 0000
slug: forming-magic-square
difficulty: medium
tags: [implementation, brute-force]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/magic-square-forming/problem
date: 2025-09-18
time_spent_min:
---

**Summary**  
Given a 3×3 matrix `s` with values in `[1..9]`, convert it to a **3×3 magic square** (distinct 1..9, all rows/cols/diagonals equal 15) with minimal total cost, where changing `x` to `y` costs `|x - y|`. Return the minimal cost.

**Key idea**  
There are only **8** distinct 3×3 magic squares (Lo Shu + rotations/mirrors). Enumerate all 8, compute the element-wise absolute-difference sum to `s`, and take the minimum.

**Examples**  
Input:
4 9 2
3 5 7
8 1 5

Output: `1`
