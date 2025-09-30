---
platform: hackerrank
id: 0015
slug: drawing-book
difficulty: easy
tags: [implementation, math]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/drawing-book/problem
date: 2025-09-18
time_spent_min:
---

**Summary**  
A book has `n` pages, and we need to reach page `p`. The student can start flipping either from the front or from the back. Compute the **minimum number of page turns** required.

**Approach**  
- From front: `p // 2`  
- From back: `(n // 2) - (p // 2)`  
Answer is the minimum of the two.

**Example**  
`n=6, p=2` → front=1, back=2 → result=1.  
`n=5, p=4` → front=2, back=0 → result=0.
