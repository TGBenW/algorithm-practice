---
platform: hackerrank
id: 0030
slug: priyanka-and-toys
difficulty: easy
tags: [greedy, sorting]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/priyanka-and-toys/problem
date: 2025-10-21
time_spent_min:
---

**Summary**  
Given weights `w`, each container can hold items with weights in range `[minWeight, minWeight+4]` based on the **minimum** item placed in that container. Find the minimum number of containers.

**Approach (Greedy + Sort)**  
1. Sort `w` ascending.  
2. Start a new container with the current smallest unused item `base`.  
3. Keep adding following items while `weight <= base + 4`.  
4. When an item exceeds `base + 4`, start a new container with this item as new `base`.  
Return the count of containers.

**Complexity**  
Sorting `O(n log n)`, single pass `O(n)`.

**Example**  
`w = [1,2,3,21,7,12,14,21]` → **4** containers.
