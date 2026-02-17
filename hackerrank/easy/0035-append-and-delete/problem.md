---
platform: hackerrank
id: 0035
slug: append-and-delete
difficulty: easy
tags: [strings, simulation, math]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/append-and-delete/problem
date: 2025-10-26
time_spent_min:
---

**Summary**  
Given two lowercase strings `s` and `t`, and an integer `k`, determine if `s` can be transformed into `t` using exactly `k` operations:
- **Append** a lowercase letter.
- **Delete** the last character.

**Rules**  
If `k` is large enough to delete and rebuild both strings entirely, return `"Yes"`.  
Otherwise, find the common prefix length and calculate how many deletions and additions are required.  

**Approach**
1. If `k >= s.count + t.count`, return `"Yes"`.
2. Find the longest common prefix length between `s` and `t`.
3. Compute total required changes =  
   `(s.count - commonPrefix) + (t.count - commonPrefix)`.
4. If `k >= totalChanges` and `(k - totalChanges) % 2 == 0`, return `"Yes"`.  
   Otherwise, return `"No"`.

**Complexity**
- Time: O(n), where n = min(len(s), len(t))  
- Space: O(1)

**Examples**
Input:
hackerhappy
hackerrank
9
Output: Yes

Input:
aba
aba
7
Output: Yes

Input:
ashley
ash
2
Output: No