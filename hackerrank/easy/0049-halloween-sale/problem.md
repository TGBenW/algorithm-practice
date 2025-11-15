---
platform: hackerrank
id: 0049
slug: halloween-sale
difficulty: easy
tags: [implementation, simulation, arithmetic, loops]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/halloween-sale/problem
date: 2025-11-15
time_spent_min:
---

## Halloween Sale

You want to buy as many games as possible during a seasonal sale.

The initial game price is `p`. After each purchase, the next game's price decreases by `d` until it would drop below `m`. Once the price would be less than or equal to `m`, the price is fixed at `m`. You have a budget of `s`. You must compute how many games you can buy.

### Approach

Greedy simulation is enough:

- Start with `currentPrice = p`, `budget = s`, `count = 0`.
- While `budget >= currentPrice`:
  - Buy a game: `budget -= currentPrice`, `count += 1`.
  - Decrease the price for the next game:  
    `currentPrice = max(currentPrice - d, m)` so it never goes below `m`.
- Return `count`.

This directly follows the problem statement and respects the minimum price cap.

### Complexity

Let `k` be the number of games you can afford.

- Time: `O(k)` since we simulate each purchased game once.
- Space: `O(1)` extra memory.

### Example

For `p = 20`, `d = 3`, `m = 6`, `s = 80`:

Prices: 20, 17, 14, 11, 8, 6, 6, ...  
Purchases with budget 80:

- Buy at 20 -> remaining 60
- Buy at 17 -> remaining 43
- Buy at 14 -> remaining 29
- Buy at 11 -> remaining 18
- Buy at 8  -> remaining 10
- Buy at 6  -> remaining 4 (cannot buy next 6)

Total games = 6.
