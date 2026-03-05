---
platform: hackerrank
id: 0058
slug: camelcase
difficulty: easy
tags: [strings, counting]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/camelcase/problem
date: 2025-12-07
time_spent_min:
---

## CamelCase

We are given a string `s` that encodes a sequence of words in CamelCase with the following properties:

- It is a concatenation of one or more words consisting of English letters.
- All letters of the first word are lowercase.
- For each subsequent word, the first letter is uppercase and the rest are lowercase.

Task: determine the number of words in `s`.

### Approach

In a valid CamelCase string:

- The first word is present if `s` is non-empty.
- Each additional word starts at an uppercase letter.
- So the number of words is:

```text
1 + (number of uppercase letters in s)
Edge case:

If s is guaranteed non-empty (as per the problem), we can safely start from 1.

If we wanted to be defensive, for an empty string we would return 0.

Algorithm:

Initialize count as 1.

Loop over each character in s:

If it is uppercase, increment count.

Return count.

Complexity
Let n = len(s).

Time: O(n) for one pass over the string.

Space: O(1) extra.

Example
s = "saveChangesInTheEditor"

Uppercase letters: C, I, T, E -> 4 uppercase letters.

Words: 1 (first word) + 4 = 5