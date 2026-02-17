---
platform: hackerrank
id: 0032
slug: the-birthday-bar
difficulty: easy
tags: [arrays, sliding-window]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/the-birthday-bar/problem
date: 2025-10-23
time_spent_min:
---

**Summary**  
Given an array `s` of integers representing chocolate squares, determine how many contiguous segments of length `m` sum to `d`.  

**Approach**  
Iterate over the array using a **sliding window** of size `m`.  
For each start index `i`, compute the sum of `s[i..i+m-1]` and compare with `d`.  
Increment counter if it matches.  

**Complexity**  
Time: O(n*m) (can be optimized to O(n) with window subtraction)  
Space: O(1)

**Examples**
- Input: `s=[1,2,1,3,2], d=3, m=2` → Output: `2`
- Input: `s=[1,1,1,1,1,1], d=3, m=2` → Output: `0`
- Input: `s=[4], d=4, m=1` → Output: `1`
