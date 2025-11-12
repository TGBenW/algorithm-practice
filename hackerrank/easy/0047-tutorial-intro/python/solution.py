## solution.py

def introTutorial(V: int, arr: list[int]) -> int:
    left, right = 0, len(arr) - 1
    while left <= right:
        mid = (left + right) // 2
        if arr[mid] == V:
            return mid
        elif arr[mid] < V:
            left = mid + 1
        else:
            right = mid - 1
    return -1

# --- demo run ---
if __name__ == "__main__":
    arr = [1, 4, 5, 7, 9, 12]
    print(introTutorial(4, arr))   # Expected: 1
    print(introTutorial(9, arr))   # Expected: 4
    print(introTutorial(12, arr))  # Expected: 5