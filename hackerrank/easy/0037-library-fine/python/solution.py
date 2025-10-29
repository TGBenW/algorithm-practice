## solution.py

def library_fine(d1: int, m1: int, y1: int, d2: int, m2: int, y2: int) -> int:
    if y1 < y2 or (y1 == y2 and m1 < m2) or (y1 == y2 and m1 == m2 and d1 <= d2):
        return 0
    if y1 > y2:
        return 10000
    elif m1 > m2:
        return 500 * (m1 - m2)
    else:
        return 15 * (d1 - d2)


# --- demo runs ---
if __name__ == "__main__":
    print(library_fine(9, 6, 2015, 6, 6, 2015))   # 45
    print(library_fine(1, 1, 2018, 31, 12, 2017)) # 10000
    print(library_fine(5, 7, 2024, 1, 6, 2024))   # 500