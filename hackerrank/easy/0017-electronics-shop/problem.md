---
platform: hackerrank
id: 0017
slug: electronics-shop
difficulty: easy
tags: [implementation, two-pointers, greedy]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/electronics-shop/problem
date: 2025-09-18
time_spent_min:
---

**Summary**  
Given `keyboards[]`, `drives[]`, and budget `b`, find the **maximum** sum `k + d ≤ b` where `k` from keyboards, `d` from drives. If impossible, return `-1`.

**Approach (O(n log n + m log m))**  
Sort `keyboards` ascending and `drives` descending.  
Use two pointers: walk keyboards up, and move drives pointer down while sum exceeds `b`. Track best sum.
