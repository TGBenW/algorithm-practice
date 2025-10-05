## solution.py

from collections import Counter
from typing import List

def picking_numbers(a: List[int]) -> int:
    freq = Counter(a)
    best = 0
    for x, cnt in freq.items():
        best = max(best, cnt + freq.get(x + 1, 0))
    return best


# --- demo run ---
if __name__ == "__main__":
    print(picking_numbers([4, 6, 5, 3, 3, 1]))    # 3
    print(picking_numbers([1, 2, 2, 3, 1, 2]))    # 5