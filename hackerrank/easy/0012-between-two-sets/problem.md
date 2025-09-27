---
platform: hackerrank
id: 0012
slug: between-two-sets
difficulty: easy
tags: [number-theory, gcd, lcm]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/between-two-sets/problem
date: 2025-09-18
time_spent_min:
---

**Summary**  
Find the count of integers `x` such that:
1) every `a[i]` divides `x`, and  
2) `x` divides every `b[j]`.

**Key idea**  
Let `L = lcm(a)` and `G = gcd(b)`. Any valid `x` must be a multiple of `L` and a divisor of `G`.  
Count all multiples `k*L` where `k*L ≤ G` and `G % (k*L) == 0`.

**Example**  
`a = [2,4]`, `b = [16,32,96]` → valid numbers are `4, 8, 16` → answer `3`.
