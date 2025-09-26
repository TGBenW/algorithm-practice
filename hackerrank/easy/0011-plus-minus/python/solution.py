## solution.py

from typing import List

def plus_minus(arr: List[int]) -> None:
    pos = sum(1 for x in arr if x > 0)
    neg = sum(1 for x in arr if x < 0)
    zero = len(arr) - pos - neg
    n = len(arr)
    print(f"{pos/n:.6f}")
    print(f"{neg/n:.6f}")
    print(f"{zero/n:.6f}")


# --- demo run ---
if __name__ == "__main__":
    plus_minus([-4, 3, -9, 0, 4, 1])
    # Expected:
    # 0.500000
    # 0.333333
    # 0.166667