## solution.py

def beautiful_days(i: int, j: int, k: int) -> int:
    def reverse_number(num: int) -> int:
        return int(str(num)[::-1])

    count = 0
    for day in range(i, j + 1):
        if abs(day - reverse_number(day)) % k == 0:
            count += 1
    return count


# --- demo run ---
if __name__ == "__main__":
    print(beautiful_days(20, 23, 6))  # 2
    print(beautiful_days(10, 13, 3))  # 2