---
platform: hackerrank
id: 0024
slug: circular-array-rotation
difficulty: easy
tags: [arrays, math, modulo]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/circular-array-rotation/problem
date: 2025-10-13
time_spent_min:
---

**Summary**  
Perform `k` right-rotations on array `a`, then answer queries for values at given indices in the rotated array.

**Key idea**  
Right-rotation by `k` is equivalent to reindexing:
rotated[i] = a[(i - (k % n) + n) % n]

For each query index `q`, return `a[(q - r + n) % n]` where `r = k % n`.

**Example**  
`a=[1,2,3], k=2, queries=[0,1,2]` → rotated = `[2,3,1]` → answers: `2,3,1`.