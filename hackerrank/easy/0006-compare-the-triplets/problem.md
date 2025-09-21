---
platform: hackerrank
id: 0006
slug: compare-the-triplets
difficulty: easy
tags: [implementation, comparison]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/compare-the-triplets/problem
date: 2025-09-18
time_spent_min:
---

**Summary**  
Compare two rating triplets `a` and `b` (three integers each).  
For each index `i`:
- if `a[i] > b[i]` → Alice gets 1 point
- if `a[i] < b[i]` → Bob gets 1 point
- otherwise → 0

Return `[alicePoints, bobPoints]`.

**Constraints**
- `1 ≤ a[i], b[i] ≤ 100`

**Examples**
- `a = [5,6,7]`, `b = [3,6,10]` → `1 1`
- `a = [17,28,30]`, `b = [99,16,8]` → `2 1`
