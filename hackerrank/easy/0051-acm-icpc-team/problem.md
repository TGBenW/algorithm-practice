---
platform: hackerrank
id: 0051
slug: acm-icpc-team
difficulty: easy
tags: [implementation, bitmask, pairs, brute-force]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/acm-icpc-team/problem
date: 2025-11-18
time_spent_min:
---

## ACM ICPC Team

You are given `n` attendees, each described by a binary string of length `m`.  
Each position in the string represents a topic: `'1'` means the attendee knows it, `'0'` means they do not.

For every possible 2-person team, the team's known topic count is the number of positions where at least one of the two has `'1'`.  
You must determine:

1. The **maximum** number of topics any 2-person team can know.
2. How many distinct 2-person teams achieve this maximum.

Return an array `[maxTopics, numTeamsWithMax]`.

### Approach

Brute-force over all pairs of attendees:

- Let `topic[i]` be the binary string for attendee `i`.
- For every pair `(i, j)` with `i < j`:
  - Count topics where `topic[i][k] == '1'` or `topic[j][k] == '1'` for each `k` in `[0, m)`.
  - Let this count be `known`.
  - If `known > maxKnown`, update:
    - `maxKnown = known`
    - `teamsCount = 1`
  - Else if `known == maxKnown`, increment `teamsCount`.

Finally, return `[maxKnown, teamsCount]`.

(Опционально можно ускорить, храня строки как битовые маски и считая биты через bitwise OR + count bits.)

### Complexity

Let `n` be the number of attendees and `m` the number of topics.

- Time: `O(n^2 * m)` — мы перебираем все пары и сканируем строку длины `m`.
- Space: `O(1)` дополнительной памяти (кроме входных данных).

### Example

For:

- `n = 4`, `m = 5`
- topics:
  - `10101`
  - `11100`
  - `11010`
  - `00101`

All 2-person teams are checked; the maximum topics is `5`, and exactly `2` teams reach it: `(1, 3)` and `(3, 4)`.  
Answer:

- `maxTopics = 5`
- `numTeamsWithMax = 2`
