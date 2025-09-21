## solution.py

from typing import List, Tuple

def compare_triplets(a: List[int], b: List[int]) -> Tuple[int, int]:
    alice = bob = 0
    for x, y in zip(a, b):
        if x > y:
            alice += 1
        elif x < y:
            bob += 1
    return alice, bob


# --- demo run ---
if __name__ == "__main__":
    print(compare_triplets([5, 6, 7], [3, 6, 10]))     # (1, 1)
    print(compare_triplets([17, 28, 30], [99, 16, 8])) # (2, 1)