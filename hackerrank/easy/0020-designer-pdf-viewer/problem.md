---
platform: hackerrank
id: 0020
slug: designer-pdf-viewer
difficulty: easy
tags: [strings, arrays]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/designer-pdf-viewer/problem
date: 2025-10-07
time_spent_min:
---

**Summary**  
Given heights for letters `a..z` and a lowercase `word`, compute the area of the blue rectangle that highlights the word. Width of each letter is `1`, height is the **max** letter height in `word`.  
Answer = `max_height(word) * len(word)`.

**Examples**  
- `h = [1,3,1,3,1,4,1,3,2,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5]`, `word = "abc"` → `9`  
- `h = [..., 7]` with `word = "zaba"` → `28`
