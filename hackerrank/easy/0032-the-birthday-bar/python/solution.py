## solution.py

from typing import List

def birthday(s: List[int], d: int, m: int) -> int:
    if len(s) < m:
        return 0
    count = 0
    for i in range(len(s) - m + 1):
        if sum(s[i:i+m]) == d:
            count += 1
    return count


# --- demo run (samples) ---
if __name__ == "__main__":
    print(birthday([1, 2, 1, 3, 2], 3, 2))   # 2
    print(birthday([1, 1, 1, 1, 1, 1], 3, 2)) # 0
    print(birthday([4], 4, 1))               # 1