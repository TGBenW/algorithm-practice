---
platform: hackerrank
id: 0002
slug: extra-long-factorials
difficulty: medium
tags: [big-integer, math]
langs: [swift, js, python]
link: https://hackerrank.com/challenges/extra-long-factorials/problem
date: 2025-10-09
time_spent_min:
---

**Summary**  
Compute `n!` for large `n` where the result does not fit in standard 64-bit integers. Print the factorial.

**Approach**  
- Use **big integer arithmetic**.  
  - Swift: simulate BigInt via an array of digits (little-endian), multiply by `i = 2..n` with carry.  
  - JS: use `BigInt` built-in and print as string.  
  - Python: built-in big ints suffice.  
- Complexity: ~`O(n * D)` where `D` is the number of digits in `n!`.

**Example checks**  
- `n=10` → `3628800`  
- `n=25` → `15511210043330985984000000`
