## solution.py

from typing import List

def divisible_sum_pairs(n: int, k: int, ar: List[int]) -> int:
    remainders = [0] * k
    for num in ar:
        remainders[num % k] += 1

    result = remainders[0] * (remainders[0] - 1) // 2

    for i in range(1, (k // 2) + (k % 2)):
        result += remainders[i] * remainders[k - i]

    if k % 2 == 0:
        result += remainders[k // 2] * (remainders[k // 2] - 1) // 2

    return result


# --- demo run (sample) ---
if __name__ == "__main__":
    print(divisible_sum_pairs(6, 3, [1, 3, 2, 6, 1, 2]))  # 5