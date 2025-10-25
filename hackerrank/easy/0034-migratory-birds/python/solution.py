## solution.py

from typing import List

def migratory_birds(arr: List[int]) -> int:
    if not arr:
        return 0  # or 1 depending on platform expectation
    freq = [0] * 5  # ids 1..5
    for bird_id in arr:
        if 1 <= bird_id <= 5:
            freq[bird_id - 1] += 1
    max_count = max(freq)
    # return first index with max -> smallest id on ties
    return freq.index(max_count) + 1


# --- demo runs (samples) ---
if __name__ == "__main__":
    print(migratory_birds([1, 4, 4, 4, 5, 3]))                  # 4
    print(migratory_birds([1,2,3,4,5,4,3,2,1,3,4]))            # 3