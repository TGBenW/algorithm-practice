## solution.py

from typing import List

def permutation_equation(p: List[int]) -> List[int]:
    result = []
    for x in range(1, len(p) + 1):
        pos_of_x = p.index(x) + 1
        y = p.index(pos_of_x) + 1
        result.append(y)
    return result


# --- demo run ---
if __name__ == "__main__":
    print(permutation_equation([2, 3, 1]))       # [2, 3, 1]
    print(permutation_equation([4, 3, 5, 1, 2])) # [1, 3, 5, 4, 2]