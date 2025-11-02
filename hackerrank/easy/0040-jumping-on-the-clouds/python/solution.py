## solution.py

def jumping_on_clouds(c: list[int]) -> int:
    jumps = 0
    i = 0
    while i < len(c) - 1:
        if i + 2 < len(c) and c[i + 2] == 0:
            i += 2
        else:
            i += 1
        jumps += 1
    return jumps


# --- demo runs ---
if __name__ == "__main__":
    print(jumping_on_clouds([0, 0, 1, 0, 0, 1, 0]))  # 4
    print(jumping_on_clouds([0, 0, 0, 0, 1, 0]))     # 3