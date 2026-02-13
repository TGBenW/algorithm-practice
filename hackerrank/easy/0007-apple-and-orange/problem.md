---
platform: hackerrank
id: 0007
slug: apple-and-orange
difficulty: easy
tags: [implementation, ranges]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/apple-and-orange/problem
date: 2025-09-22
time_spent_min:
---

**Summary**  
House covers inclusive range `[s..t]`. Apple tree at `a`, orange tree at `b`.  
Each fruit distance is applied along the x-axis from its tree position  
(negative = left, positive = right). Count how many apples/oranges land on the house.

**Example**  
`s=7, t=11, a=5, b=15`  
apples distances `[-2, 2, 1]` → land at `[3, 7, 6]` → `1` on the house  
oranges distances `[5, -6]` → land at `[20, 9]` → `1` on the house

**Output**  
Print two integers on separate lines: apples count, then oranges count.
