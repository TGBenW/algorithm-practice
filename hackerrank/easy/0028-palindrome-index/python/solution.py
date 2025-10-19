## solution.py

def palindrome_index(s: str) -> int:
    def is_pal(i: int, j: int) -> bool:
        while i < j:
            if s[i] != s[j]:
                return False
            i += 1; j -= 1
        return True

    L, R = 0, len(s) - 1
    while L < R:
        if s[L] == s[R]:
            L += 1; R -= 1
        else:
            if is_pal(L + 1, R): return L
            if is_pal(L, R - 1): return R
            return -1
    return -1


# --- demo run (from samples) ---
if __name__ == "__main__":
    print(palindrome_index("aaab"))  # 3
    print(palindrome_index("baa"))   # 0
    print(palindrome_index("aaa"))   # -1