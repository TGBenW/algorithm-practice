## solution.py

from typing import List


def workbook(n: int, k: int, arr: List[int]) -> int:
    page = 0
    special_count = 0

    for problems in arr:
        start_page = page + 1
        total_pages = (problems + k - 1) // k
        page += total_pages

        for p in range(1, problems + 1):
            page_number = start_page + (p - 1) // k
            if p == page_number:
                special_count += 1

    return special_count


# --- demo run ---
if __name__ == "__main__":
    n_sample = 5
    k_sample = 3
    arr_sample = [4, 2, 6, 1, 10]  # Expected: 4
    print(workbook(n_sample, k_sample, arr_sample))
