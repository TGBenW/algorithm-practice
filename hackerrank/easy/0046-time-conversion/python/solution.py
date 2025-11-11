## solution.py

def timeConversion(s: str) -> str:
    period = s[-2:]             # "AM" or "PM"
    core = s[:-2]               # "hh:mm:ss"
    hh_str, mm, ss = core.split(":")
    hh = int(hh_str)

    if period == "AM":
        if hh == 12:
            hh = 0
    else:  # PM
        if hh != 12:
            hh += 12

    return f"{hh:02d}:{mm}:{ss}"

# --- demo run ---
if __name__ == "__main__":
    print(timeConversion("07:05:45PM"))  # Expected: 19:05:45
    print(timeConversion("12:01:00PM"))  # Expected: 12:01:00
    print(timeConversion("12:01:00AM"))  # Expected: 00:01:00