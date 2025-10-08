---
platform: hackerrank
id: 0021
slug: utopian-tree
difficulty: easy
tags: [implementation, simulation]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/utopian-tree/problem
date: 2025-10-08
time_spent_min:
---

**Summary**  
The tree starts at height `1`. For `n` growth cycles, each **spring** doubles the height, and each **summer** increases it by `+1`. Return the height after `n` cycles.

**Approach**  
Iterate `1..n`: if the cycle index is odd → `height *= 2` (spring), else → `height += 1` (summer). Start from `height = 1`.

**Examples**  
- `n=0` → `1`  
- `n=1` → `2`  
- `n=4` → `7`
