---
platform: hackerrank
id: 0036
slug: sherlock-and-squares
difficulty: easy
tags: [math, sqrt, counting]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/sherlock-and-squares/problem
date: 2025-10-27
time_spent_min:
---

**Summary**  
Given a range `[a, b]`, determine how many perfect square integers exist within that range, inclusive.  
A perfect square is an integer that is the square of another integer (e.g., 1, 4, 9, 16).

**Approach**  
The problem reduces to finding how many integer values `x` satisfy:  
x^2 ∈ [a, b]

That means:
x ∈ [ceil(sqrt(a)), floor(sqrt(b))]

Hence, the total count is:
max(0, floor(sqrt(b)) - ceil(sqrt(a)) + 1)


**Complexity**  
Time: O(1)  
Space: O(1)

**Examples**
a = 3, b = 9 → 2 (4, 9)
a = 17, b = 24 → 0
a = 1, b = 1 → 1 (1)