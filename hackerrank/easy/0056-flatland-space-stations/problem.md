---
platform: hackerrank
id: 0056
slug: flatland-space-stations
difficulty: easy
tags: [implementation, sorting, greedy, distances]
langs: [swift, js, python]
link: https://www.hackerrank.com/challenges/flatland-space-stations/problem
date: 2025-12-04
time_spent_min:
---

## Flatland Space Stations

Flatland has `n` cities in a line, numbered from `0` to `n - 1`. Some cities contain space stations.

Every pair of neighboring cities has distance `1` between them. For each city we can define its distance to the nearest space station.

We need to compute the **maximum** distance from any city to its nearest space station.

### Approach

Let `c` be the list of cities that have a space station.

1. If `c` contains all cities (`c.count == n`), then every city already has a station:
   - answer is `0`.

2. Otherwise:
   - Sort the array of station positions: `s = sort(c)`.
   - Consider three kinds of gaps:
     1. **Left edge**: from city `0` to the first station `s[0]`.  
        Distance: `s[0]`.
     2. **Right edge**: from the last station `s[last]` to city `n - 1`.  
        Distance: `(n - 1) - s[last]`.
     3. **Middle gaps**: between consecutive stations `s[i - 1]` and `s[i]`.  
        Any city between them is at most `floor((s[i] - s[i - 1]) / 2)` away from a station, so the "worst" distance in that segment is:
        - `gapDist = (s[i] - s[i - 1]) / 2`.

   - The result is the maximum among:
     - left edge distance
     - right edge distance
     - all `gapDist` for middle gaps

### Complexity

Let `m` be the number of stations.

- Time: `O(m log m)` due to sorting.
- Space: `O(1)` extra (besides the sorted array).

### Example

`n = 5`, `c = [0, 4]`

- Sorted stations: `[0, 4]`
- Left edge: distance from city 0 to first station 0 is `0`
- Right edge: `(5 - 1) - 4 = 0`
- Middle gap: `4 - 0 = 4` so `4 / 2 = 2`
- Maximum distance is `2`
