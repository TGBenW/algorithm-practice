## solution.py

def find_digits(n: int) -> int:
    count = 0
    for d in str(n):
        digit = int(d)
        if digit != 0 and n % digit == 0:
            count += 1
    return count


# --- demo run (from sample) ---
if __name__ == "__main__":
    print(find_digits(12))    # 2
    print(find_digits(1012))  # 3