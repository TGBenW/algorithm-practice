---
platform: hackerrank
id: 0034
slug: migratory-birds
difficulty: easy
tags: [frequency, counting, arrays]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/migratory-birds/problem
date: 2025-10-26
time_spent_min:
---

**Summary**  
Given sightings `arr` where each value is a bird type id (1..5), return the id with the **highest frequency**.  
If multiple types share the max frequency, return the **smallest id** among them.

**Approach**  
- Count frequencies for ids 1..5 in a fixed-size array of length 5.  
- Find the index of the **first** max frequency (ensures smallest id on ties).  
- Return index + 1.

**Complexity**  
Time: O(n)  
Space: O(1) (constant 5-sized counter)

**Examples**  
- `arr=[1,4,4,4,5,3]` → `4`  
- `arr=[1,2,3,4,5,4,3,2,1,3,4]` → `3`
