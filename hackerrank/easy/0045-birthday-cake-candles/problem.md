---
platform: hackerrank
id: 0045
slug: birthday-cake-candles
difficulty: easy
tags: [arrays, counting, implementation]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/birthday-cake-candles/problem
date: 2025-11-10
time_spent_min:
---

## Birthday Cake Candles

You are given an array of candle heights. The child can only blow out the **tallest** candles.  
Determine how many candles have the maximum height.

### Approach
1. Find the maximum height using `max()`.
2. Count how many candles equal that maximum.

### Complexity
- **Time:** `O(n)`
- **Space:** `O(1)`

### Example
Input: `[3, 2, 1, 3]`  
Tallest height = 3 → there are 2 candles with this height.  
**Output:** `2`
