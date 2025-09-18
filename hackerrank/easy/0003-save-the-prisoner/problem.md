---
platform: hackerrank
id: 0003
slug: save-the-prisoner
difficulty: easy
tags: [implementation, modular-arithmetic]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/save-the-prisoner/problem
date: 2025-09-18
time_spent_min:
---

**Summary**  
Given `n` prisoners, `m` candies, and a starting seat `s`, distribute candies one by one around a circular table. Return the seat number that receives the last (bad) candy.

**Rule**  
Indexing is 1-based. The last seat is computed via modular arithmetic:
((s + m - 1) % n), with 0 meaning seat n.


**Examples**  
- `n=5, m=2, s=1` → `2`  
- `n=5, m=2, s=2` → `3`  
- `n=7, m=19, s=2` → `6`  
- `n=3, m=7, s=3` → `3`
