## solution.py

from typing import List

def breaking_records(scores: List[int]) -> List[int]:
    if not scores:
        return [0, 0]
    cur_min = scores[0]
    cur_max = scores[0]
    min_breaks = 0
    max_breaks = 0

    for s in scores[1:]:
        if s > cur_max:
            cur_max = s
            max_breaks += 1
        elif s < cur_min:
            cur_min = s
            min_breaks += 1
    return [max_breaks, min_breaks]


# --- demo run (samples) ---
if __name__ == "__main__":
    print(breaking_records([10, 5, 20, 20, 4, 5, 2, 25, 1]))        # [2, 4]
    print(breaking_records([3, 4, 21, 36, 10, 28, 35, 5, 24, 42]))  # [4, 0]