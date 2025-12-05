## solution.py

from typing import List

def fairRations(B: List[int]) -> str:
    arr = B[:]  # copy
    odd_count = sum(1 for x in arr if x % 2 != 0)

    if odd_count % 2 == 1:
        return "NO"

    loaves_distributed = 0

    for i in range(len(arr) - 1):
        if arr[i] % 2 != 0:
            arr[i] += 1
            arr[i + 1] += 1
            loaves_distributed += 2

    return str(loaves_distributed)


# --- demo run ---
if __name__ == "__main__":
    print(fairRations([2, 3, 4, 5, 6]))  # "4"
    print(fairRations([1, 2]))          # "NO"
