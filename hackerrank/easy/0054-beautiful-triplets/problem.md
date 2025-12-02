---
platform: hackerrank
id: 0054
slug: beautiful-triplets
difficulty: easy
tags: [arrays, math, counting, hashing]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/beautiful-triplets/problem
date: 2025-11-28
time_spent_min:
---

## Beautiful Triplets

We are given:

- an integer `d`
- a sorted (non-decreasing) array `arr` of length `n`

A triplet `(arr[i], arr[j], arr[k])` is **beautiful** if:

- `i < j < k`
- `arr[j] - arr[i] = d`
- `arr[k] - arr[j] = d`

Equivalently:

```text
arr[j] = arr[i] + d
arr[k] = arr[i] + 2*d
We must count how many beautiful triplets exist in arr.

Approach
Because the array is sorted and we only care about values that differ by exactly d, we can use fast lookups instead of triple loops.

One simple idea:

Insert all elements of arr into a hash set S.

For each value x in arr:

check whether x + d is in S

and whether x + 2*d is in S

if both are present, (x, x + d, x + 2*d) forms a beautiful triplet

Count how many such x exist.

This works because for sorted arr, the indices will always respect i < j < k when the values are x, x + d, x + 2*d in the array.

Your Swift solution uses a counting dictionary and treats the current number as the third in the triplet, checking if both number - d and number - 2*d have been seen before. That is also an O(n) approach with a hash map.

Complexity
Let n be the length of arr:

Time: O(n) average, assuming O(1) hash lookups.

Space: O(n) for the set or dictionary.

Example
Input:
d = 3
arr = [1, 2, 4, 5, 7, 8, 10]

Beautiful triplets by value:

(1, 4, 7)
(4, 7, 10)
(2, 5, 8)

Total count = 3.