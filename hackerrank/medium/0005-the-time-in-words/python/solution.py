## solution.py

from typing import Dict


NUMBERS_IN_WORDS: Dict[int, str] = {
    1: "one", 2: "two", 3: "three", 4: "four", 5: "five",
    6: "six", 7: "seven", 8: "eight", 9: "nine", 10: "ten",
    11: "eleven", 12: "twelve", 13: "thirteen", 14: "fourteen",
    15: "fifteen", 16: "sixteen", 17: "seventeen", 18: "eighteen",
    19: "nineteen", 20: "twenty", 21: "twenty one", 22: "twenty two",
    23: "twenty three", 24: "twenty four", 25: "twenty five",
    26: "twenty six", 27: "twenty seven", 28: "twenty eight",
    29: "twenty nine",
}


def hour_word(h: int) -> str:
    normalized = ((h - 1) % 12) + 1
    return NUMBERS_IN_WORDS[normalized]


def timeInWords(h: int, m: int) -> str:
    if m == 0:
        return f"{hour_word(h)} o' clock"
    if m == 1:
        return f"{NUMBERS_IN_WORDS[1]} minute past {hour_word(h)}"
    if m == 15:
        return f"quarter past {hour_word(h)}"
    if m == 30:
        return f"half past {hour_word(h)}"
    if m == 45:
        return f"quarter to {hour_word(h + 1)}"
    if m == 59:
        return f"{NUMBERS_IN_WORDS[1]} minute to {hour_word(h + 1)}"

    if m < 30:
        return f"{NUMBERS_IN_WORDS[m]} minutes past {hour_word(h)}"
    remaining = 60 - m
    return f"{NUMBERS_IN_WORDS[remaining]} minutes to {hour_word(h + 1)}"


# --- demo run ---
if __name__ == "__main__":
    print(timeInWords(5, 47))  # thirteen minutes to six
    print(timeInWords(3, 0))   # three o' clock
    print(timeInWords(7, 15))  # quarter past seven
    print(timeInWords(12, 59)) # one minute to one
