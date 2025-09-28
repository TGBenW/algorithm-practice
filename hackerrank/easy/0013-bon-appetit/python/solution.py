## solution.py

from typing import List

def bonAppetit(bill: List[int], k: int, b: int) -> None:
    anna = (sum(price for i, price in enumerate(bill) if i != k)) // 2
    print("Bon Appetit" if anna == b else b - anna)


# --- demo run ---
if __name__ == "__main__":
    bonAppetit([3, 10, 2, 9], 1, 12)  # 5
    bonAppetit([3, 10, 2, 9], 1, 7)   # Bon Appetit