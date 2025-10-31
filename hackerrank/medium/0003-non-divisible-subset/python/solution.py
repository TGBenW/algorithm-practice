## solution.py

from typing import List

def non_divisible_subset(k: int, s: List[int]) -> int:
    if k <= 0:
        return 0

    counts = [0] * k
    for num in s:
        counts[num % k] += 1

    total = min(counts[0], 1)

    if k > 1:
        for i in range(1, (k + 1) // 2):
            total += max(counts[i], counts[k - i])
        if k % 2 == 0:
            total += min(counts[k // 2], 1)

    return total


# --- demo runs ---
if __name__ == "__main__":
    print(non_divisible_subset(3, [1, 7, 2, 4]))               # 3
    print(non_divisible_subset(4, [19,10,12,10,24,25,22]))     # 3