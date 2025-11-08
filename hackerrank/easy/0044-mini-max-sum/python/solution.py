## solution.py

from typing import List

def miniMaxSum(arr: List[int]) -> None:
    assert len(arr) == 5, "Array must contain exactly 5 elements"
    s = sorted(arr)
    min_sum = sum(s[:4])
    max_sum = sum(s[1:])
    print(f"{min_sum} {max_sum}")

# --- demo run ---
if __name__ == "__main__":
    miniMaxSum([1, 2, 3, 4, 5])  # Expected: 10 14