---
platform: hackerrank
id: 0008
slug: bigger-is-greater
difficulty: medium
tags: [strings, permutations, lexicographical, next-permutation]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/bigger-is-greater/problem
date: 2025-11-26
time_spent_min:
---

## Bigger is Greater

Given a word `w`, we want to find the next lexicographically greater string that can be formed by rearranging its characters.

If such a string exists, return the **smallest** lexicographically greater one.  
If it does not exist (i.e. `w` is already the highest permutation), return `"no answer"`.

### Approach (Next Permutation)

This is the classic next lexicographical permutation algorithm:

1. Convert the string into an array of characters `chars`.

2. Scan from right to left to find the **pivot** index `i`:
   - Find the largest `i` such that `chars[i] < chars[i + 1]`.
   - If no such `i` exists (the sequence is non-increasing from right to left), there is no greater permutation → return `"no answer"`.

3. Scan from right to left to find index `j`:
   - `j` is the largest index such that `chars[j] > chars[i]`.

4. Swap `chars[i]` and `chars[j]`.

5. Reverse the suffix starting at `i + 1` to the end:
   - This ensures we get the **smallest** lexicographically greater string, because the suffix becomes the lowest possible order.

6. Join the characters back into a string and return it.

### Complexity

Let `n` be the length of the string.

- Time: `O(n)` — one backward scan for `i`, one for `j`, and reversing the suffix.
- Space: `O(n)` for the character array.

### Example

`w = "dkhc"`

- Scanning from right:
  - pivot `i = 2` (`'h' < 'c'`? no, `'k' < 'h'`? no, `'d' < 'k'`? yes → `i = 0` actually — but the algorithm correctly finds the right pivot).
- Next greater permutation is `"hcdk"`.

So the answer is `"hcdk"`.
