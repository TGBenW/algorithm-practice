---
platform: hackerrank
id: 0001
slug: climbing-the-leaderboard
difficulty: medium
tags: [binary-search, arrays, sorting]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/climbing-the-leaderboard/problem
date: 2025-10-06
---

**Summary**  
Implement a Dense Ranking leaderboard where equal scores share the same rank, and determine a player’s rank after each new game score.

**Approach**  
1. Remove duplicates and sort leaderboard scores descending.  
2. For each player score (ascending), find its rank using binary search.  
3. Append ranks to result list.

**Complexity**  
O(n + m log n) — n = ranked length, m = player scores length.

**Examples**
- ranked = [100, 100, 50, 40, 40, 20, 10], player = [5, 25, 50, 120]  
  → [6, 4, 2, 1]  
- ranked = [100, 90, 90, 80, 75, 60], player = [50, 65, 77, 90, 102]  
  → [6, 5, 4, 2, 1]
