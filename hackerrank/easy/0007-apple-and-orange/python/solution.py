## solution.py

from typing import List, Tuple

def count_apples_and_oranges(s: int, t: int, a: int, b: int,
                             apples: List[int], oranges: List[int]) -> Tuple[int, int]:
    apple_positions = [a + d for d in apples]
    orange_positions = [b + d for d in oranges]
    apples_on = sum(s <= x <= t for x in apple_positions)
    oranges_on = sum(s <= x <= t for x in orange_positions)
    return apples_on, oranges_on


# --- demo run ---
if __name__ == "__main__":
    s, t, a, b = 7, 11, 5, 15
    apples = [-2, 2, 1]
    oranges = [5, -6]
    ap_cnt, or_cnt = count_apples_and_oranges(s, t, a, b, apples, oranges)
    print(ap_cnt)  # 1
    print(or_cnt)  # 1