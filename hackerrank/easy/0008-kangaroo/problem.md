---
platform: hackerrank
id: 0008
slug: kangaroo
difficulty: easy
tags: [math, modular-arithmetic]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/kangaroo/problem
date: 2025-09-23
time_spent_min:
---

**Summary**  
Two kangaroos start at positions `x1` and `x2` (on a number line) and jump with fixed distances `v1` and `v2` per jump.  
Return `"YES"` if they land at the **same position after the same number of jumps**, otherwise `"NO"`.

**Key idea**  
They meet iff there exists integer `n ≥ 0` such that:
x1 + nv1 = x2 + nv2
=> (x2 - x1) is divisible by (v1 - v2) and n = (x2 - x1)/(v1 - v2) ≥ 0

Handle `v1 == v2` separately.

**Examples**  
- `x1=0 v1=3 x2=4 v2=2` → `YES`  
- `x1=0 v1=2 x2=5 v2=3` → `NO`