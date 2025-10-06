## solution.py

from typing import List

def climbing_leaderboard(ranked: List[int], player: List[int]) -> List[int]:
    ranking = sorted(set(ranked), reverse=True)
    result = []

    def binary_rank(score: int) -> int:
        low, high = 0, len(ranking) - 1
        while low <= high:
            mid = (low + high) // 2
            if ranking[mid] == score:
                return mid + 1
            elif ranking[mid] > score:
                low = mid + 1
            else:
                high = mid - 1
        return low + 1

    for score in player:
        result.append(binary_rank(score))
    return result


# --- demo run ---
if __name__ == "__main__":
    ranked = [100, 100, 50, 40, 40, 20, 10]
    player = [5, 25, 50, 120]
    print(climbing_leaderboard(ranked, player))  # [6, 4, 2, 1]