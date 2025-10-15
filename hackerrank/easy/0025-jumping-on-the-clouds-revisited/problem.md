---
platform: hackerrank
id: 0025
slug: jumping-on-the-clouds-revisited
difficulty: easy
tags: [simulation, modulo]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/jumping-on-the-clouds-revisited/problem
date: 2025-10-08
time_spent_min:
---

**Summary**  
Given circular clouds `c` (0=cumulus, 1=thunderhead) and jump size `k`, start with energy `E=100` at index `0`.  
Each jump costs `1` energy; landing on a thundercloud costs **+2** extra (total `3`). Continue jumping by `k` using modulo until you return to index `0`. Return final energy.

**Approach**  
- Simulate at least one jump with `do/while` (Swift) or loop until position returns to `0`.  
- Update `pos = (pos + k) % n` each step.  
- `E -= (c[pos] == 1 ? 3 : 1)`.

**Example**  
`n=8, k=2, c=[0,0,1,0,0,1,1,0]` → final energy `92`.
