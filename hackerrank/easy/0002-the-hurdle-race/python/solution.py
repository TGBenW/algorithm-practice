# solution.py

from typing import List

def hurdle_race(k: int, height: List[int]) -> int:
    max_hurdle = max(height) if height else 0
    return 0 if k >= max_hurdle else max_hurdle - k


# --- demo run ---
if __name__ == "__main__":
    k = 4
    hurdles = [1, 6, 3, 5, 2]
    print(hurdle_race(k, hurdles))  # 2