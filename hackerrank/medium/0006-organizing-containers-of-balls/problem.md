---
platform: hackerrank
id: 0006
slug: organizing-containers-of-balls
difficulty: medium
tags: [implementation, greedy, counting, matrices]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/organizing-containers-of-balls/problem
date: 2025-11-21
time_spent_min:
---

## Organizing Containers of Balls

We have `n` containers and `n` ball types.  
`container[i][j]` is the number of balls of type `j` in container `i`.

In one operation we can swap **any** ball between **any two containers**. We want to check whether it is possible to end up in a state where:

- Each container contains balls of **only one type**.
- All balls of a given type are in a **single container**.

We must print `"Possible"` if this configuration can be achieved, otherwise `"Impossible"`.

### Key Insight

Swapping balls only changes **which container** holds them, but it does **not** change:

- how many balls each container holds in total,
- how many balls of each type exist in total.

So:

- For each container `i`, compute total balls in container:  
  `containerSum[i] = sum_j container[i][j]`.
- For each type `j`, compute total balls of that type:  
  `typeSum[j] = sum_i container[i][j]`.

We want to assign each type to some container. That is possible **iff** the multiset of container capacities equals the multiset of type totals:

```text
sort(containerSum) == sort(typeSum)  ?  "Possible" : "Impossible"
We do not need to simulate swaps.

Algorithm

Compute containerSum[i] for each row (O(n^2)).

Compute typeSum[j] for each column (O(n^2)).

Sort both arrays (O(n log n)).

If they are equal, return "Possible", else "Impossible".

Complexity

Let n be the number of containers / types.

Time: O(n^2 + n log n) (dominated by the matrix scan).

Space: O(n) for the two arrays.

Example

For:

1 1
1 1


container sums: [2, 2]

type sums: [2, 2]
Sorted arrays match → "Possible".

For:

0 2
1 1


container sums: [2, 2]

type sums: [1, 3]
Sorted arrays differ → "Impossible".