---
platform: hackerrank
id: 0052
slug: taum-and-bday
difficulty: easy
tags: [implementation, math, greedy, cost-minimization]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/taum-and-bday/problem
date: 2025-11-10
time_spent_min:
---

## Taum and B'day

Taum needs to buy `b` black gifts and `w` white gifts.

- Each black gift costs `bc`.
- Each white gift costs `wc`.
- A gift can be converted to the opposite color for `z`.

You must compute the **minimum total cost**.

### Approach

Instead of comparing full purchase vs full conversion scenarios, compute **effective cost per color**:

- Effective black cost:
  `effBc = min(bc, wc + z)`
- Effective white cost:
  `effWc = min(wc, bc + z)`

Total cost:

```text
total = b * effBc + w * effWc
This ensures we always choose the cheapest way to obtain each gift.

Complexity

Time: O(1) per test case

Space: O(1)

Example
b = 3, w = 6, bc = 9, wc = 1, z = 1
effBc = min(9, 1 + 1) = 2
effWc = min(1, 9 + 1) = 1
total = 3*2 + 6*1 = 12
