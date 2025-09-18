## solution.py

def save_the_prisoner(n: int, m: int, s: int) -> int:
    x = (s + m - 1) % n
    return n if x == 0 else x


# --- demo run ---
if __name__ == "__main__":
    print(save_the_prisoner(5, 2, 1))  # 2
    print(save_the_prisoner(5, 2, 2))  # 3
    print(save_the_prisoner(7, 19, 2)) # 6
    print(save_the_prisoner(3, 7, 3))  # 3
