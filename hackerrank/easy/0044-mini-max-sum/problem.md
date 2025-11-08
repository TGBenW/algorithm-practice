---
platform: hackerrank
id: 0044
slug: mini-max-sum
difficulty: easy
tags: [arrays, math, prefix-suffix, overflow]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/mini-max-sum/problem
date: 2025-11-09
time_spent_min:
---

## Mini-Max Sum

Given five positive integers, find the **minimum** and **maximum** values by summing exactly **four** of the five numbers, and print them as two space-separated integers.

### Approach
- Sort the 5-element array ascending.
- **Min sum** = sum of the first 4 elements.
- **Max sum** = sum of the last 4 elements.
- Beware of overflow → accumulate in 64-bit (or arbitrary precision).

### Complexity
- **Time:** `O(5 log 5)` (i.e., constant ~ sort of 5 items)
- **Space:** `O(1)` extra
