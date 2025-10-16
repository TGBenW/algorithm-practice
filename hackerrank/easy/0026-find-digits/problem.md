---
platform: hackerrank
id: 0026
slug: find-digits
difficulty: easy
tags: [math, modulo, digits]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/find-digits/problem
date: 2025-10-09
time_spent_min:
---

**Summary**  
Given an integer `n`, count how many of its digits divide it evenly. Ignore `0` digits since division by zero is undefined.

**Approach**  
1. Convert integer `n` into array of digits.  
2. For each digit `d` ≠ 0, check `n % d == 0`.  
3. Increment counter for each true result.  
4. Return the count.

**Example**  
`n = 1012` → digits [1,0,1,2] → divisors {1,1,2} → count = 3
