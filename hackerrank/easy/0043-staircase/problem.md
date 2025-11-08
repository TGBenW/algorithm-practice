---
platform: hackerrank
id: 0043
slug: staircase
difficulty: easy
tags: [implementation, printing, formatting]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/staircase/problem
date: 2025-11-08
time_spent_min:
---

## Staircase

Print a right-aligned staircase of size `n` using `#`. The last line has no leading spaces.

### Approach
For each row `i` in `1...n`:
- print `(n - i)` spaces + `i` hashes.

### Complexity
- **Time:** `O(n^2)` characters printed (n lines, average ~n/2 chars)
- **Space:** `O(1)` extra
