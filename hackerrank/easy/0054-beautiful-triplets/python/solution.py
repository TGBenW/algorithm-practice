## solution.py

from typing import List

def beautifulTriplets(d: int, arr: List[int]) -> int:
    values = set(arr)
    count = 0

    for x in arr:
        if x + d in values and x + 2 * d in values:
            count += 1

    return count


# --- demo run ---
if __name__ == "__main__":
    d_sample = 3
    arr_sample = [1, 2, 4, 5, 7, 8, 10]  # Expected: 3
    print(beautifulTriplets(d_sample, arr_sample))
