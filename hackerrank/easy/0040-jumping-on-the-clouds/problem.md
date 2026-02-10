---
platform: hackerrank
id: 0040
slug: jumping-on-the-clouds
difficulty: easy
tags: [greedy, arrays, game-logic]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/jumping-on-the-clouds/problem
date: 2025-11-06
time_spent_min:
---

## Summary
Given an array of clouds represented by binary values (`0` = cumulus, `1` = thunderhead), find the **minimum number of jumps** required to reach the last cloud.  
The player can jump either 1 or 2 positions forward but cannot land on a thunderhead.

## Approach
- Start at index `0`.
- Greedily jump 2 steps if possible (safe and within bounds), otherwise jump 1 step.
- Count the number of jumps until reaching the last cloud.

### Complexity
- **Time:** O(n)
- **Space:** O(1)

## Example
c = [0, 0, 1, 0, 0, 1, 0]
→ Path: 0 → 1 → 3 → 4 → 6
→ Result: 4 jumps