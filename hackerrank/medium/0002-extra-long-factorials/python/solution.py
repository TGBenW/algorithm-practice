## solution.py

def extra_long_factorials(n: int) -> None:
    res = 1
    for i in range(2, n + 1):
        res *= i
    print(res)


# --- demo run ---
if __name__ == "__main__":
    extra_long_factorials(10)  # 3628800
    extra_long_factorials(25)  # 15511210043330985984000000