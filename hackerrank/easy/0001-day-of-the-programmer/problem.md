---
platform: hackerrank
id: 0001
slug: day-of-the-programmer
difficulty: easy
tags: [implementation, calendar]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/day-of-the-programmer/problem
date: 2025-09-17
time_spent_min:
---

**Summary**  
Find the 256th day of the year in Russia between 1700 and 2700, considering:
- Julian calendar until 1917 (leap if divisible by 4),
- Gregorian calendar from 1919 (leap if divisible by 400, or divisible by 4 but not by 100),
- Transition year 1918: February 14 was the 32nd day.

Return the date in format `dd.mm.yyyy`.

**Examples**  
- Input: `2017` → Output: `13.09.2017`  
- Input: `2016` → Output: `12.09.2016`  
- Input: `1800` → Output: `12.09.1800`
