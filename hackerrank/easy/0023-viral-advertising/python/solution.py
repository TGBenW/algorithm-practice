## solution.py

def viral_advertising(n: int) -> int:
    cumulative = 0
    shared = 5
    for _ in range(n):
        liked = shared // 2
        cumulative += liked
        shared = liked * 3
        return_value = cumulative
    return cumulative


# --- demo run ---
if __name__ == "__main__":
    print(viral_advertising(3))  # 9
    print(viral_advertising(5))  # 24