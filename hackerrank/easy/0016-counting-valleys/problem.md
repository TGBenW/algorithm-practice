---
platform: hackerrank
id: 0016
slug: counting-valleys
difficulty: easy
tags: [implementation, simulation]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/counting-valleys/problem
date: 2025-09-18
time_spent_min:
---

**Summary**  
Given the number of steps and a path string (consisting of `U` and `D`), determine how many valleys the hiker walked through.  
A valley starts with a step below sea level and ends when returning to sea level.

**Approach**  
- Track current altitude (`level`).  
- Increment or decrement for each step.  
- Count a valley when returning to sea level **after an `U` step**.  

**Example**  
Input: `steps=8, path="UDDDUDUU"` → Output: `1`
