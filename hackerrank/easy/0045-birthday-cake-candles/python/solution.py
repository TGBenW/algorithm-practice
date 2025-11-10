## solution.py

from typing import List

def birthdayCakeCandles(candles: List[int]) -> int:
    if not candles:
        return 0
    tallest = max(candles)
    return candles.count(tallest)

# --- demo run ---
if __name__ == "__main__":
    print(birthdayCakeCandles([3, 2, 1, 3]))   # Expected: 2
    print(birthdayCakeCandles([4, 4, 1, 3, 4]))  # Expected: 3