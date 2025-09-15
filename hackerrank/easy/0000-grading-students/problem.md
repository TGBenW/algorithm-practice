---
platform: hackerrank
id: 0000
slug: grading-students
difficulty: easy
tags: [implementation, rounding]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/grading/problem
date: 2025-09-15
time_spent_min:
---

**Summary**  
For each grade, if it is **< 38** → do not round.  
If it is **≥ 38**, round **up to the next multiple of 5** _only_ when the difference is **< 3**.  
Return the list of adjusted grades.

**Example**  
- 84 → next multiple of 5 is 85 (diff 1) → **85**  
- 29 → < 38 → **29** (no change)  
- 57 → next multiple is 60 (diff 3) → **57** (no change)
