## solution.py

from typing import List

def cavity_map(grid: List[str]) -> List[str]:
    n = len(grid)
    if n < 3:
        return grid[:]

    # numeric original for comparisons
    orig = [[int(ch) for ch in row] for row in grid]
    # mutable output buffer
    out = [list(row) for row in grid]

    for i in range(1, n - 1):
        for j in range(1, n - 1):
            v = orig[i][j]
            if (
                v > orig[i - 1][j] and
                v > orig[i + 1][j] and
                v > orig[i][j - 1] and
                v > orig[i][j + 1]
            ):
                out[i][j] = 'X'

    return [''.join(row) for row in out]


# --- demo run (from sample) ---
if __name__ == "__main__":
    g0 = ["1112", "1912", "1892", "1234"]
    print(cavity_map(g0))  # ['1112', '1X12', '18X2', '1234']