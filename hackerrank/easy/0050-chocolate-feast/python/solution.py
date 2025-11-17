## solution.py

from typing import List, Tuple


def chocolateFeast(n: int, c: int, m: int) -> int:
    total_chocolates = n // c
    wrappers = total_chocolates

    while wrappers >= m:
        new_chocolates = wrappers // m
        total_chocolates += new_chocolates
        wrappers = wrappers % m + new_chocolates

    return total_chocolates


# --- demo run with sample input ---
if __name__ == "__main__":
    tests: List[Tuple[int, int, int]] = [
        (10, 2, 5),  # Expected: 6
        (12, 4, 4),  # Expected: 3
        (6, 2, 2),   # Expected: 5
    ]

    for n, c, m in tests:
        print(chocolateFeast(n, c, m))
