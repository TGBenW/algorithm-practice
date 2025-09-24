## solution.py

from typing import List

def a_very_big_sum(ar: List[int]) -> int:
    return sum(ar)


# --- demo run ---
if __name__ == "__main__":
    arr = [1000000001, 1000000002, 1000000003, 1000000004, 1000000005]
    print(a_very_big_sum(arr))  # 5000000015