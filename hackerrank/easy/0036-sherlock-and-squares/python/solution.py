## solution.py

import math

def squares(a: int, b: int) -> int:
    start = math.ceil(math.sqrt(a))
    end = math.floor(math.sqrt(b))
    return max(0, end - start + 1)


# --- demo runs ---
if __name__ == "__main__":
    print(squares(3, 9))     # 2
    print(squares(17, 24))   # 0
    print(squares(1, 1))     # 1