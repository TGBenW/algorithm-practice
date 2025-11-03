## solution.py

from typing import List

def service_lane(width: List[int], cases: List[List[int]]) -> List[int]:
    result = []
    for start, end in cases:
        result.append(min(width[start:end + 1]))
    return result


# --- demo runs ---
if __name__ == "__main__":
    width = [2, 3, 1, 2, 3, 2, 3, 3]
    cases = [
        [0, 3],
        [4, 6],
        [6, 7],
        [3, 5],
        [0, 7]
    ]
    print(service_lane(width, cases))  # [1, 2, 3, 2, 1]