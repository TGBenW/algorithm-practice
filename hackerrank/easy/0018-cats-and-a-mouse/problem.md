---
platform: hackerrank
id: 0018
slug: cats-and-a-mouse
difficulty: easy
tags: [implementation, math]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/cats-and-a-mouse/problem
date: 2025-10-03
time_spent_min:
---

**Summary**  
Given positions of Cat A `x`, Cat B `y`, and Mouse C `z` on a number line, determine which cat reaches the mouse first (equal speed).  
Return:
- `Cat A` if `|z - x| < |z - y|`
- `Cat B` if `|z - y| < |z - x|`
- `Mouse C` if distances are equal

**Examples**  
- `x=1, y=2, z=3` → `Cat B`  
- `x=1, y=3, z=2` → `Mouse C`
