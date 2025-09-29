## solution.py

from collections import Counter
from typing import List

def sock_merchant(n: int, ar: List[int]) -> int:
    counts = Counter(ar)
    return sum(v // 2 for v in counts.values())


# --- demo run ---
if __name__ == "__main__":
    arr = [10, 20, 20, 10, 10, 30, 50, 10, 20]
    print(sock_merchant(len(arr), arr))  # 3