## solution.py

from typing import List

def toys(w: List[int]) -> int:
    if not w:
        return 0
    arr = sorted(w)
    containers = 1
    base = arr[0]
    for weight in arr:
        if weight > base + 4:
            containers += 1
            base = weight
    return containers


# --- demo run (sample) ---
if __name__ == "__main__":
    print(toys([1, 2, 3, 21, 7, 12, 14, 21]))  # 4