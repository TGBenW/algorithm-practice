---
platform: hackerrank
id: 0057
slug: fair-rations
difficulty: easy
tags: [greedy, implementation, arrays]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/fair-rations/problem
date: 2025-12-05
time_spent_min:
---

## Fair Rations

You are given an array `B` where `B[i]` is the number of loaves held by the i-th person in a line.

You can repeatedly perform the following operation:

- Choose index `i` and give one loaf to person `i` and one loaf to one of their immediate neighbors (`i - 1` or `i + 1`).

Goal: make **every** `B[i]` even, using the minimum number of loaves.  
If it is impossible, return `"NO"`.

### Key Observations

- Each operation changes the parity (odd or even) of exactly two adjacent people.
- The **total** number of odd entries must be even for a solution to exist.
  - If the number of odd elements is odd, output `"NO"` immediately.

Given the constraints, a greedy left to right approach works:

1. Count how many elements in `B` are odd.
   - If this count is odd, return `"NO"`.
2. Otherwise, walk from left to right:
   - Whenever you see `B[i]` odd, you must fix it by pairing with `B[i+1]`.
   - Perform one operation:
     - `B[i] += 1`
     - `B[i+1] += 1`
     - Accumulate `loavesDistributed += 2`
   - Move on. This guarantees `B[i]` becomes even and pushes the oddness to the right, keeping the minimal number of operations.

At the end, all must be even, and `loavesDistributed` is minimal.

### Complexity

Let `n` be the length of `B`.

- Time: `O(n)` (single pass plus an initial scan for odd count).
- Space: `O(1)` extra if we modify in place.

### Example

`B = [2, 3, 4, 5, 6]`

- Odd count is 2 (positions 1 and 3), which is even, so a solution exists.
- i = 1: `B[1]` is 3 (odd)
  - Give to 1 and 2: `B` becomes `[2, 4, 5, 5, 6]`, loaves = 2
- i = 2: `B[2]` is 5 (odd)
  - Give to 2 and 3: `B` becomes `[2, 4, 6, 6, 6]`, loaves = 4

All are even, answer is `"4"`.
