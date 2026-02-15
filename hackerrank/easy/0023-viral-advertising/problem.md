---
platform: hackerrank
id: 0023
slug: viral-advertising
difficulty: easy
tags: [simulation, math]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/strange-advertising/problem
date: 2025-10-12
time_spent_min:
---

**Summary**  
Day 1: ad is shared with 5 people. Each day, `liked = floor(shared/2)`, add to cumulative, then `shared = liked * 3`.  
Return the cumulative likes after `n` days.

**Example**  
`n=3` → liked per day: `2, 3, 4` → cumulative `9`.
