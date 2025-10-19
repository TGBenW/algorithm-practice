---
platform: hackerrank
id: 0028
slug: palindrome-index
difficulty: easy
tags: [two-pointers, strings]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/palindrome-index/problem
date: 2025-10-09
time_spent_min:
---

**Summary**  
Given a lowercase string `s`, return the index of a single character whose removal makes `s` a palindrome. If `s` is already a palindrome (or no single removal can fix it), return `-1`.

**Approach**  
Two pointers `L`/`R`.  
- Move inward while `s[L]==s[R]`.  
- On first mismatch, check if removing `s[L]` makes the inner substring a palindrome; if yes → return `L`.  
- Else, if removing `s[R]` works → return `R`.  
- Otherwise, return `-1`.  
If loop ends without mismatch → `-1`.

**Complexity**  
`O(n)` time, `O(1)` extra (ignoring string-to-array conversions).
