---
platform: hackerrank
id: 0050
slug: chocolate-feast
difficulty: easy
tags: [implementation, simulation, arithmetic]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/chocolate-feast/problem
date: 2025-11-17
time_spent_min:
---

## Chocolate Feast

Little Bobby has `n` units of money. Each chocolate bar costs `c` units. For every `m` wrappers he collects, he can exchange them for one free chocolate.

You must compute how many chocolates in total he can eat if he always exchanges wrappers whenever possible.

### Approach

1. Compute how many chocolates he can buy initially:
   - `total = n / c`
   - `wrappers = total`
2. While `wrappers >= m`:
   - Exchange wrappers for new chocolates:
     - `newChocs = wrappers / m`
     - `total += newChocs`
   - Update wrappers:
     - Spent `newChocs * m` wrappers and gained `newChocs` new ones
     - `wrappers = wrappers % m + newChocs`
3. Return `total`.

This simulates the wrapper exchange process until it is no longer possible.

### Complexity

Let `k` be the total number of chocolates eaten.

- Time: `O(k)` since each exchange reduces wrappers and corresponds to at most one new chocolate.
- Space: `O(1)` extra space.

### Example

For `n = 6`, `c = 2`, `m = 2`:

- Initial chocolates: `6 / 2 = 3`, wrappers = 3
- Exchange 2 wrappers -> 1 chocolate, total = 4, wrappers = 1 (leftover) + 1 (new) = 2
- Exchange 2 wrappers -> 1 chocolate, total = 5, wrappers = 1
- Cannot exchange more, answer is 5.
