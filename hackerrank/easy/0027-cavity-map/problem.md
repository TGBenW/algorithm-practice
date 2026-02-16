---
platform: hackerrank
id: 0027
slug: cavity-map
difficulty: easy
tags: [grid, strings, simulation]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/cavity-map/problem
date: 2025-10-17
time_spent_min:
---

**Summary**  
Given an `n x n` grid of digits (as strings), mark a cell as `X` if:
- it's **not** on the border, and
- its value is **strictly greater** than each of its four neighbors (up, down, left, right).

**Approach**  
Use the **original grid for comparisons** and write marks into a **separate copy** so earlier replacements do not affect later checks.

**Example**  
Input:
1112
1912
1892
1234

Output:
1112
1X12
18X2
1234