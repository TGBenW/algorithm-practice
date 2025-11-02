---
platform: hackerrank
id: 0041
slug: service-lane
difficulty: easy
tags: [arrays, range-minimum, simulation]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/service-lane/problem
date: 2025-11-02
time_spent_min:
---

## Summary
You are given an array representing the widths of a service lane at each point along a highway.  
For each pair of entry and exit indices, determine the maximum vehicle size that can pass through all segments between them.

## Approach
- For each query `(start, end)`:
  - Extract the subarray `width[start...end]`.
  - The maximum possible vehicle width equals the **minimum** width value in that range.
- Output one integer per query.

### Complexity
- **Time:** O(t * n) (sufficient for constraints)
- **Space:** O(1)

## Example
- width = [2, 3, 1, 2, 3, 2, 3, 3]
- queries = [(0,3), (4,6), (6,7), (3,5), (0,7)]
- → outputs: [1, 2, 3, 2, 1]