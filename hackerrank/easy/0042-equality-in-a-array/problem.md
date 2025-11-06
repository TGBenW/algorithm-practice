---
platform: hackerrank
id: 0042
slug: equality-in-a-array
difficulty: easy
tags: [arrays, frequency-count, hash-map]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/equality-in-a-array/problem
date: 2025-11-06
time_spent_min:
---

## Summary
Given an array of integers, determine the **minimum number of deletions** required so that all remaining elements are equal.

## Approach
1. Count how many times each value occurs.
2. Identify the most frequent element (its count = `maxFrequency`).
3. The minimum deletions = total elements - `maxFrequency`.

### Complexity
- **Time:** O(n)
- **Space:** O(n)

## Example
arr = [3, 3, 2, 1, 3]
- Frequency = {3:3, 2:1, 1:1}
- maxFrequency = 3
- Result = 5 - 3 = 2