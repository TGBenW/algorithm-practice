## solution.py

def camelcase(s: str) -> int:
    if not s:
        return 0

    count = 1
    for ch in s:
        if ch.isupper():
            count += 1
    return count


# --- demo run ---
if __name__ == "__main__":
    sample = "saveChangesInTheEditor"  # Expected: 5
    print(camelcase(sample))
