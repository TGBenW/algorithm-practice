## solution.py

from collections import Counter

def equalize_array(arr):
    freq = Counter(arr)
    max_freq = max(freq.values())
    return len(arr) - max_freq


# --- demo runs ---
if __name__ == "__main__":
    print(equalize_array([3, 3, 2, 1, 3]))  # 2
    print(equalize_array([1, 2, 2, 3]))     # 2