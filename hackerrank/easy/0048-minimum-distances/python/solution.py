## solution.py

from typing import List, Dict

def minimumDistances(a: List[int]) -> int:
    last: Dict[int, int] = {}
    min_d = None

    for i, v in enumerate(a):
        if v in last:
            d = i - last[v]
            min_d = d if min_d is None or d < min_d else min_d
            if min_d == 1:
                return 1  # early exit
        last[v] = i

    return -1 if min_d is None else min_d

# --- demo run ---
if __name__ == "__main__":
    demo1 = [7, 1, 3, 4, 1, 7]
    print(minimumDistances(demo1))  # Expected: 3

    demo2 = [1, 2, 3]
    print(minimumDistances(demo2))  # Expected: -1

    demo3 = [5, 5, 5]
    print(minimumDistances(demo3))  # Expected: 1