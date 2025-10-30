## solution.py

from typing import List

def cut_the_sticks(arr: List[int]) -> List[int]:
    if not arr:
        return []
    a = sorted(arr)
    res = []
    i = 0
    n = len(a)
    while i < n:
        res.append(n - i)
        cur = a[i]
        while i < n and a[i] == cur:
            i += 1
    return res


# --- demo runs ---
if __name__ == "__main__":
    print(cut_the_sticks([5,4,4,2,2,8]))        # [6, 4, 2, 1]
    print(cut_the_sticks([1,2,3,4,3,3,2,1]))    # [8, 6, 4, 1]