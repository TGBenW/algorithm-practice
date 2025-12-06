---
platform: hackerrank
id: 0009
slug: the-grid-search
difficulty: medium
tags: [strings, 2d-array, brute-force, pattern-search]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/the-grid-search/problem
date: 2025-12-06
time_spent_min:
---

## The Grid Search

We are given a grid `G` of digits and a smaller pattern grid `P`. Each row is a string of digits.

We must decide whether `P` appears as a contiguous submatrix inside `G`. If the pattern exists, return `"YES"`, otherwise `"NO"`.

More precisely, `P` exists in `G` if there is some top-left position `(r, c)` such that for all pattern rows `i` and columns `j`:

```text
G[r + i][c + j] == P[i][j]
Approach
Let

R be the number of rows in G

C be the number of columns in G rows

r be the number of rows in P

c be the number of columns in P rows

Brute force with pruning:

For each possible starting row startRow from 0 to R - r:

Search for occurrences of P[0] as a substring in G[startRow]:

For each column startCol where G[startRow].substring(startCol, startCol + c) equals P[0]:

Check the next r - 1 rows:

For k from 1 to r - 1, verify that
G[startRow + k].substring(startCol, startCol + c) == P[k].

If all r rows match, return "YES".

If no position passes all checks, return "NO".

This uses the fact that we only need to compare c characters per row and restrict column candidates by matching the first pattern row.

Complexity
Let R * C be the grid size and r * c be the pattern size.

In the worst case, we may try most positions:

Time: O(R * C * r) for naive search, which is fine for typical constraints.

Space: O(1) extra (ignoring the input storage).

Example

Grid:

7283455864
6731158619
8988242643
3830589324
2229505813
5633845374
6473530293
7053106601
0834282956
4607924137


Pattern:

9505
3845
3530