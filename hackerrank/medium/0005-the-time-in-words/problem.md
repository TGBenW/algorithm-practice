---
platform: hackerrank
id: 0005
slug: the-time-in-words
difficulty: medium
tags: [implementation, strings, formatting, time]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/the-time-in-words/problem
date: 2025-11-16
time_spent_min:
---

## The Time in Words

Given time as hour `h` and minutes `m`, convert it to an English phrase according to the rules:

- For `m = 0`, use `"h o' clock"`.
- For `1` and `59`, use `"one minute past"` or `"one minute to"`.
- For `15` and `45`, use `"quarter past"` or `"quarter to"`.
- For `30`, use `"half past"`.
- For `2..29` (excluding `15`), use `"X minutes past h"`.
- For `31..59` (excluding `45` and `59`), use `"X minutes to next_hour"`, where `X = 60 - m`.

All numbers are expressed in words up to `"twenty nine"`. When using `to`, the hour is incremented, and after `12` it wraps back to `1`.

### Approach

- Prepare a map from integers `1..29` to their word form.
- Handle special cases:
  - `m == 0` -> `"h o' clock"`.
  - `m == 15`, `30`, `45`.
  - `m == 1` and `m == 59` (singular `"minute"`).
- For general minutes:
  - If `m < 30`, format `"X minutes past h"`.
  - If `m > 30`, compute `remaining = 60 - m`, next hour `nextH = h % 12 + 1`, and format `"remaining minutes to nextH"`.

### Complexity

- Time: `O(1)` for any input, since all operations are constant.
- Space: `O(1)` for the fixed word map.

### Example

- Input: `h = 5`, `m = 47`  
  `60 - 47 = 13`, next hour is `6`.  
  Output: `"thirteen minutes to six"`.

- Input: `h = 3`, `m = 0`  
  Output: `"three o' clock"`.

- Input: `h = 7`, `m = 15`  
  Output: `"quarter past seven"`.
