## solution.py

def kangaroo(x1: int, v1: int, x2: int, v2: int) -> str:
    if v1 == v2:
        return "YES" if x1 == x2 else "NO"
    dx = x2 - x1
    dv = v1 - v2
    return "YES" if dx % dv == 0 and dx // dv >= 0 else "NO"


# --- demo run ---
if __name__ == "__main__":
    print(kangaroo(0, 3, 4, 2))  # YES
    print(kangaroo(0, 2, 5, 3))  # NO