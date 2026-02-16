---
platform: hackerrank
id: 0029
slug: manasa-and-stones
difficulty: easy
tags: [math, combinatorics]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/manasa-and-stones/problem
date: 2025-10-20
time_spent_min:
---

**Summary**  
Given `n` non-zero stones, starting from `0`, each step adds either `a` or `b`.  
Compute all possible values of the **last** stone (after `n-1` steps), sorted ascending.

**Key idea**  
Let `k` be how many times we used `b` (thus `n-1-k` times `a`).  
Then every possible last value is:
value(k) = (n - 1 - k) * a + k * b, for k = 0..(n-1)

If `a == b`, the answer is just `[(n-1)*a]`.

**Complexity**  
O(n) time, O(n) space.

**Examples**  
- `n=3, a=1, b=2` → `2 3 4`  
- `n=4, a=10, b=100` → `30 120 210 300`
