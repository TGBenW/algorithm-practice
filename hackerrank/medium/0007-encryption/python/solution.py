## solution.py

from math import floor, ceil, sqrt


def encryption(s: str) -> str:
    work = s.replace(" ", "")
    L = len(work)

    root = sqrt(L)
    rows = floor(root)
    cols = ceil(root)

    if rows * cols < L:
        rows += 1

    grid = [work[i : i + cols] for i in range(0, L, cols)]
    columns = []

    for c in range(cols):
        col_chars = []
        for r in range(len(grid)):
            if c < len(grid[r]):
                col_chars.append(grid[r][c])
        columns.append("".join(col_chars))

    return " ".join(columns)


# --- demo run ---
if __name__ == "__main__":
    print(encryption("haveaniceday"))  # hae and via ecy
    print(encryption("feedthedog"))    # fto ehg ee dd
    print(encryption("chillout"))      # clu hlt io
