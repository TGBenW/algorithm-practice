## solution.py

from typing import List

def jumping_on_clouds(c: List[int], k: int) -> int:
    energy = 100
    n = len(c)
    pos = 0
    while True:
        pos = (pos + k) % n
        energy -= 3 if c[pos] == 1 else 1
        if pos == 0:
            break
    return energy


# --- demo run (from sample) ---
if __name__ == "__main__":
    c0 = [0, 0, 1, 0, 0, 1, 1, 0]
    print(jumping_on_clouds(c0, 2))  # 92