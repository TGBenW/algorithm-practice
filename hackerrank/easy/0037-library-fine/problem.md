---
platform: hackerrank
id: 0037
slug: library-fine
difficulty: easy
tags: [date, math, conditions]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/library-fine/problem
date: 2025-10-29
time_spent_min:
---

**Summary**  
Given the expected and actual return dates for a library book, determine the fine based on the following rules:

- If the book is returned **on or before** the expected date → **no fine (0)**.  
- If returned **after the due day**, but within the **same month and year** → **15 × days late**.  
- If returned **after the due month**, but within the **same year** → **500 × months late**.  
- If returned **after the due year** → **fixed fine = 10000**.

Only the least precise measure of lateness is considered (year > month > day).

**Formula**
if y1 > y2: fine = 10000
elif y1 == y2 and m1 > m2: fine = 500 * (m1 - m2)
elif y1 == y2 and m1 == m2 and d1 > d2: fine = 15 * (d1 - d2)
else: fine = 0

**Complexity**  
Time: O(1)  
Space: O(1)

**Examples**
Returned: 9 6 2015
Due: 6 6 2015
→ Fine = 15 * (9 - 6) = 45