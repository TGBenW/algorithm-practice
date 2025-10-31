---
platform: hackerrank
id: 0039
slug: repeated-string
difficulty: easy
tags: [strings, math, counting]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/repeated-string/problem
date: 2025-10-30
time_spent_min:
---

## Summary
Given a string `s`, repeated infinitely, find how many times the letter `'a'` appears in the first `n` characters of that infinite sequence.

## Approach
1. Count how many `'a'` characters exist in one full instance of `s`.
2. Compute how many times `s` repeats fully within `n` (`n / len(s)`).
3. Add `'a'` counts from the remainder (`n % len(s)`).

### Formula
count = (n // len(s)) * a_in_full + a_in_prefix


### Complexity
- **Time:** O(len(s))
- **Space:** O(1)

## Example
s = "aba", n = 10
→ full repeats = 3, remainder = 1
→ 'a' in full = 2, 'a' in prefix "a" = 1
→ result = 3*2 + 1 = 7z