## solution.py

def page_count(n: int, p: int) -> int:
    from_front = p // 2
    from_back = (n // 2) - (p // 2)
    return min(from_front, from_back)


# --- demo run ---
if __name__ == "__main__":
    print(page_count(6, 2))  # 1
    print(page_count(5, 4))  # 0