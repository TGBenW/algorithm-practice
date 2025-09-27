## solution.py

from typing import List
from math import gcd as _gcd

def get_total_x(a: List[int], b: List[int]) -> int:
    def gcd(x: int, y: int) -> int:
        return _gcd(x, y)

    def lcm(x: int, y: int) -> int:
        if x == 0 or y == 0:
            return 0
        return x // gcd(x, y) * y

    def gcd_of_array(arr: List[int]) -> int:
        g = arr[0]
        for v in arr[1:]:
            g = gcd(g, v)
        return g

    def lcm_of_array(arr: List[int]) -> int:
        l = arr[0]
        for v in arr[1:]:
            l = lcm(l, v)
        return l

    L = lcm_of_array(a)
    G = gcd_of_array(b)
    if L == 0 or G == 0 or G % L != 0:
        return 0

    count = 0
    x = L
    while x <= G:
        if G % x == 0:
            count += 1
        x += L
    return count


# --- demo run ---
if __name__ == "__main__":
    print(get_total_x([2, 4], [16, 32, 96]))  # 3