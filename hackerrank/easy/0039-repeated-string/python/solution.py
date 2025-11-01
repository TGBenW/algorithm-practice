## solution.py

def repeated_string(s: str, n: int) -> int:
    full_repeat = n // len(s)
    leftover = n % len(s)
    a_full_count = s.count('a')
    a_leftover_count = s[:leftover].count('a')
    return full_repeat * a_full_count + a_leftover_count


# --- demo runs ---
if __name__ == "__main__":
    print(repeated_string("aba", 10))           # 7
    print(repeated_string("a", 1000000000000))  # 1000000000000