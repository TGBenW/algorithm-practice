---
platform: hackerrank
id: 0040
slug: time-conversion
difficulty: easy
tags: [strings, parsing, formatting, time]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/time-conversion/problem
date: 2025-11-10
time_spent_min:
---

## Time Conversion

Convert a time in 12-hour AM/PM format to 24-hour (military) time.

### Rules
- `12:xx:xxAM` → `00:xx:xx`
- `12:xx:xxPM` → `12:xx:xx`
- `hh:xx:xxAM` (1–11) → same `hh` zero-padded
- `hh:xx:xxPM` (1–11) → `hh+12`

### Approach
Parse suffix `AM/PM`, split `hh:mm:ss`, adjust hour according to rules, and format as `HH:MM:SS`.

### Complexity
- **Time:** `O(1)` (fixed-length parsing)
- **Space:** `O(1)`
