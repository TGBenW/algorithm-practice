## solution.py

from typing import List

def circular_array_rotation(a: List[int], k: int, queries: List[int]) -> List[int]:
    n = len(a)
    if n == 0:
        return []
    r = k % n
    return [a[(q - r) % n] for q in queries]


# --- demo run (from sample) ---
if __name__ == "__main__":
    a0 = [1, 2, 3]
    k0 = 2
    queries0 = [0, 1, 2]
    print(circular_array_rotation(a0, k0, queries0))  # [2, 3, 1]