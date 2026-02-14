---
platform: hackerrank
id: 0014
slug: sock-merchant
difficulty: easy
tags: [hashmap, counting]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/sock-merchant/problem
date: 2025-09-29
time_spent_min:
---

**Summary**  
Given an array of sock colors, count how many **pairs** exist (two socks of the same color).

**Approach**  
Count occurrences per color and sum `count // 2` across all colors.

**Example**  
`ar = [10, 20, 20, 10, 10, 30, 50, 10, 20]` → counts: `{10:4, 20:3, 30:1, 50:1}` → pairs = `4//2 + 3//2 + 1//2 + 1//2 = 2 + 1 + 0 + 0 = 3`.
