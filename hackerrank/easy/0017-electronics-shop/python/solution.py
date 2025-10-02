## solution.py

from typing import List

def get_money_spent(keyboards: List[int], drives: List[int], b: int) -> int:
    ks = sorted(keyboards)
    ds = sorted(drives, reverse=True)
    i = j = 0
    best = -1

    while i < len(ks) and j < len(ds):
        s = ks[i] + ds[j]
        if s > b:
            j += 1    # try cheaper drive
        else:
            if s > best:
                best = s
            i += 1    # try pricier keyboard
    return best


# --- demo run ---
if __name__ == "__main__":
    print(get_money_spent([3, 1], [5, 2, 8], 10))     # 9
    print(get_money_spent([4], [5], 5))   # -1