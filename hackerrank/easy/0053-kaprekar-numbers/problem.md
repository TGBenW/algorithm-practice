---
platform: hackerrank
id: 0053
slug: kaprekar-numbers
difficulty: easy
tags: [math, implementation, number-theory]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/kaprekar-numbers/problem
date: 2025-11-28
time_spent_min:
---

## Modified Kaprekar Numbers

A **modified Kaprekar number** is a positive integer `n` with the following property:

- Let `d` be the number of digits in `n`.
- Compute `n²` and convert it to a string `s`.
- Split `s` into two parts: `L` (left) and `R` (right), where:
  - `R` has exactly `d` digits (may include leading zeros),
  - `L` is the remaining prefix (possibly empty).
- Convert `L` and `R` to integers (empty `L` is treated as `0`).
- If `L + R == n`, then `n` is a modified Kaprekar number.

Given a range `[p, q]` (inclusive), we must find all modified Kaprekar numbers in that range.

If none exist, we print `INVALID RANGE`.

### Approach

For each number `n` in `[p, q]`:

1. Convert `n` to string and get its digit count `d`.
2. Compute `n²` and convert to string `sqStr`.
3. Take the right part `R` as the last `d` characters of `sqStr`.
4. Take the left part `L` as the remaining prefix (could be empty).
5. Parse `L` and `R` to integers (empty → `0`).
6. If `L + R == n`, then `n` is a modified Kaprekar number; collect it.

At the end:

- If the list is non-empty, print numbers space-separated.
- Otherwise, print `INVALID RANGE`.

We must use a wide-enough integer type when squaring to avoid overflow.

### Complexity

Let `N = q - p + 1` and let `D` be the number of digits of the largest `n²` in range.

- Time: `O(N * D)` — for each number we:
  - compute a square and process digit strings.
- Space: `O(D)` for temporary strings and `O(K)` for storing up to `K` Kaprekar numbers.

### Example

Range: `p = 1`, `q = 100`.

Kaprekar numbers are: `1, 9, 45, 55, 99`.

- `45² = 2025`, split as `20` and `25` → `20 + 25 = 45`.
- `99² = 9801`, split as `98` and `01` → `98 + 1 = 99`.
