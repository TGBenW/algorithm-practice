---
platform: hackerrank
id: 0007
slug: encryption
difficulty: medium
tags: [strings, implementation, grid, encoding]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/encryption/problem
date: 2025-11-22
time_spent_min:
---

## Encryption

We are given a string `s` that needs to be encrypted.

1. Remove all spaces from the string.
2. Let `L` be the length of the resulting string.
3. Compute:
   - `rows = floor(sqrt(L))`
   - `cols = ceil(sqrt(L))`
   - ensure `rows * cols >= L`
4. Write the characters row-wise into a grid with `rows` rows and `cols` columns.
5. Construct the encrypted string by reading column-wise:
   - for each column, read characters top to bottom
   - join the column strings with a single space.

If multiple grids satisfy the constraints, use the one with minimum area `rows * cols`.

### Approach

- Strip spaces: `work = s.replacingOccurrences(" ", "")`.
- Compute `L = work.count`.
- Compute `r = floor(sqrt(L))`, `c = ceil(sqrt(L))`.
- If `r * c < L`, increase `r` by `1`.
- Build the grid by slicing the string into chunks of length `c`:
  - last row may be shorter.
- For each column index `0..<(c)`:
  - walk over rows and append the character at that column if it exists.
- Join the column strings by spaces and return.

### Complexity

Let `L` be the length of the string (without spaces).

- Time: `O(L)` — we traverse the string a constant number of times.
- Space: `O(L)` — for the grid and output.

### Example

`s = "haveaniceday"`

- After removing spaces: `"haveaniceday"` (length `L = 12`)
- `sqrt(12) ≈ 3.46`, so `rows = 3`, `cols = 4`, `rows * cols = 12 >= 12`.
- Grid:

```text
have
anic
eday

```Columns:
hae and via ecy

Result: "hae and via ecy".