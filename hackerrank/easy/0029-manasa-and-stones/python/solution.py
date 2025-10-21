## solution.py

from typing import List

def stones(n: int, a: int, b: int) -> List[int]:
    if a == b:
        return [(n - 1) * a]
    low, high = min(a, b), max(a, b)
    return [(n - 1 - k) * low + k * high for k in range(n)]


# --- demo run (from samples) ---
if __name__ == "__main__":
    print(stones(3, 1, 2))       # [2, 3, 4]
    print(stones(4, 10, 100))    # [30, 120, 210, 300]