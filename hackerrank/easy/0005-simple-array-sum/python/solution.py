## solution.py

from typing import List

def simple_array_sum(ar: List[int]) -> int:
    return sum(ar)


# --- demo run ---
if __name__ == "__main__":
    print(simple_array_sum([1, 2, 3, 4, 10, 11]))  # 31