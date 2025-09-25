## solution.py

from typing import List

def diagonal_difference(arr: List[List[int]]) -> int:
    n = len(arr)
    left = sum(arr[i][i] for i in range(n))
    right = sum(arr[i][n - 1 - i] for i in range(n))
    return abs(left - right)


# --- demo run ---
if __name__ == "__main__":
    matrix = [
        [11, 2, 4],
        [4, 5, 6],
        [10, 8, -12]
    ]
    print(diagonal_difference(matrix))  # 15