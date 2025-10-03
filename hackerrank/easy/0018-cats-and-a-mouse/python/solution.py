## solution.py

def cat_and_mouse(x: int, y: int, z: int) -> str:
    da = abs(z - x)
    db = abs(z - y)
    if da == db:
        return "Mouse C"
    return "Cat A" if da < db else "Cat B"


# --- demo run ---
if __name__ == "__main__":
    print(cat_and_mouse(1, 2, 3))  # Cat B
    print(cat_and_mouse(1, 3, 2))  # Mouse C