## solution.py

def queens_attack(n: int, k: int, r_q: int, c_q: int, obstacles: list[list[int]]) -> int:
    # Direction indices:
    # 0 up, 1 down, 2 right, 3 left, 4 up-right, 5 up-left, 6 down-right, 7 down-left
    limits = [
        n - r_q,
        r_q - 1,
        n - c_q,
        c_q - 1,
        min(n - r_q, n - c_q),
        min(n - r_q, c_q - 1),
        min(r_q - 1, n - c_q),
        min(r_q - 1, c_q - 1),
    ]

    for r_o, c_o in obstacles:
        if r_o == r_q:
            if c_o < c_q:
                limits[3] = min(limits[3], c_q - c_o - 1)  # left
            elif c_o > c_q:
                limits[2] = min(limits[2], c_o - c_q - 1)  # right
        elif c_o == c_q:
            if r_o < r_q:
                limits[1] = min(limits[1], r_q - r_o - 1)  # down
            elif r_o > r_q:
                limits[0] = min(limits[0], r_o - r_q - 1)  # up
        elif abs(r_o - r_q) == abs(c_o - c_q):
            if r_o > r_q and c_o > c_q:
                limits[4] = min(limits[4], r_o - r_q - 1)  # up-right
            elif r_o > r_q and c_o < c_q:
                limits[5] = min(limits[5], r_o - r_q - 1)  # up-left
            elif r_o < r_q and c_o > c_q:
                limits[6] = min(limits[6], r_q - r_o - 1)  # down-right
            else:
                limits[7] = min(limits[7], r_q - r_o - 1)  # down-left

    return sum(limits)


# --- demo runs ---
if __name__ == "__main__":
    print(queens_attack(4, 0, 4, 4, []))                         # 9
    print(queens_attack(5, 3, 4, 3, [[5,5],[4,2],[2,3]]))        # 10
    print(queens_attack(1, 0, 1, 1, []))                          # 0