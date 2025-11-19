## solution.py

from typing import List, Tuple

def taumBday(b: int, w: int, bc: int, wc: int, z: int) -> int:
    effective_bc = min(bc, wc + z)
    effective_wc = min(wc, bc + z)
    return b * effective_bc + w * effective_wc


# --- demo run ---
if __name__ == "__main__":
    tests = [
        (10, 10, 1, 1, 1),
        (5, 9, 2, 3, 4),
        (3, 6, 9, 1, 1),
        (7, 7, 4, 2, 1),
        (3, 3, 1, 9, 2),
    ]

    for test in tests:
        print(taumBday(*test))
