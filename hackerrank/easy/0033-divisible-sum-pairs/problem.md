---
platform: hackerrank
id: 0033
slug: divisible-sum-pairs
difficulty: easy
tags: [math, modular-arithmetic, arrays]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/divisible-sum-pairs/problem
date: 2025-10-09
time_spent_min:
---

**Summary**  
Given an array `ar` of integers and a positive integer `k`, find the number of pairs `(i, j)` such that `i < j` and `(ar[i] + ar[j]) % k == 0`.

**Approach (Remainder Frequency Counting)**  
1. Compute the frequency of each remainder `ar[i] % k`.  
2. Pairs with remainder `0` can combine within themselves: `count[0] choose 2`.  
3. For all `i` in `1..k/2`, pair `i` with `k-i`.  
4. If `k` is even, handle middle remainder `k/2` separately.  

**Complexity**  
Time: O(n + k)  
Space: O(k)

**Example**
Input:
6 3
1 3 2 6 1 2
Output:
5

Pairs: (0,2), (0,5), (1,3), (2,4), (4,5)