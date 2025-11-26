## solution.py

from typing import List


def biggerIsGreater(w: str) -> str:
    chars: List[str] = list(w)
    n = len(chars)
    if n < 2:
        return "no answer"

    # Step 1: find pivot i
    i = n - 2
    while i >= 0 and chars[i] >= chars[i + 1]:
        i -= 1

    if i < 0:
        return "no answer"

    # Step 2: find rightmost j > i with chars[j] > chars[i]
    j = n - 1
    while chars[j] <= chars[i]:
        j -= 1

    # Step 3: swap chars[i], chars[j]
    chars[i], chars[j] = chars[j], chars[i]

    # Step 4: reverse suffix from i+1 to end
    chars[i + 1 :] = reversed(chars[i + 1 :])

    return "".join(chars)


# --- demo run ---
if __name__ == "__main__":
    tests = [
        "ab",
        "bb",
        "hefg",
        "dhck",
        "dkhc",
        "lmno",
        "dcba",
        "dcbb",
        "abdc",
        "abcd",
        "fedcbabcd",
    ]

    for t in tests:
        print(f"{t} -> {biggerIsGreater(t)}")
