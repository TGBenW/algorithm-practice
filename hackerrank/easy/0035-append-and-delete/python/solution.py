## solution.py

def append_and_delete(s: str, t: str, k: int) -> str:
    if k >= len(s) + len(t):
        return "Yes"

    common = 0
    for i in range(min(len(s), len(t))):
        if s[i] == t[i]:
            common += 1
        else:
            break

    deletions = len(s) - common
    additions = len(t) - common
    total_changes = deletions + additions

    return "Yes" if k >= total_changes and (k - total_changes) % 2 == 0 else "No"


# --- demo runs ---
if __name__ == "__main__":
    print(append_and_delete("hackerhappy", "hackerrank", 9))  # Yes
    print(append_and_delete("aba", "aba", 7))                 # Yes
    print(append_and_delete("ashley", "ash", 2))              # No