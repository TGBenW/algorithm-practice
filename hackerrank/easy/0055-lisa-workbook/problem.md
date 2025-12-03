---
platform: hackerrank
id: 0055
slug: lisa-workbook
difficulty: easy
tags: [implementation, math, counting]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/lisa-workbook/problem
date: 2025-12-03
time_spent_min:
---

## Lisa's Workbook

Lisa has a workbook with `n` chapters. The i-th chapter contains `arr[i]` problems.

Rules:

- Chapters are numbered from 1 to `n`.
- In chapter `i`, problems are numbered from 1 to `arr[i]`.
- Each page can contain at most `k` problems.
- Each chapter starts on a new page. A page never mixes problems from different chapters.
- Page numbers start from 1 and increase sequentially.
- A problem is called **special** if its index within the chapter is equal to the page number it appears on.

Given `n`, `k`, and `arr`, count how many special problems are in the workbook.

### Approach

We simulate the pagination and count when the problem index equals the current page number.

Maintain:

- `page` current page number
- `specialCount` total number of special problems

For each chapter:

1. For problem indices `p` from `1` to `arr[i]`:
   - If the chapter starts or the previous page is full, increment `page` when moving to the next group of up to `k` problems.
   - More directly:
     - For a given chapter with `chapterProblems` and starting page `startPage`:
       - Problem `p` is on page `startPage + (p - 1) // k`.
       - If `p == pageNumber`, this problem is special.
2. After finishing the chapter, update `page` by adding the number of pages used in this chapter:
   - `pagesUsed = ceil(chapterProblems / k) = (chapterProblems + k - 1) // k`.

Implementation detail:

- Track `lastCountedPage` for pages allocated so far.
- For each chapter:
  - `startPage = lastCountedPage + 1`
  - `totalPages = (chapterProblems + k - 1) // k`
  - `lastCountedPage += totalPages`
  - For each problem `i` in `1..chapterProblems`:
    - `pageNumber = startPage + (i - 1) / k`
    - If `i == pageNumber`, increment `specialCount`.

### Complexity

Let `n` be the number of chapters and `T = sum(arr[i])` the total number of problems.

- Time: `O(T)` since we visit each problem once.
- Space: `O(1)` extra space.

### Example

Input:

- `n = 5`, `k = 3`
- `arr = [4, 2, 6, 1, 10]`

Result: `4` special problems.
