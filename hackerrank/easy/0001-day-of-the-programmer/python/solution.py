// solution.py

def day_of_programmer(year: int) -> str:
    if year == 1918:
        return f"26.09.{year}"
    elif year < 1918:
        return f"{'12.09' if year % 4 == 0 else '13.09'}.{year}"
    else:
        if year % 400 == 0 or (year % 4 == 0 and year % 100 != 0):
            return f"12.09.{year}"
        else:
            return f"13.09.{year}"


# --- demo run ---
if __name__ == "__main__":
    print(day_of_programmer(2017))  # 13.09.2017