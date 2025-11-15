## solution.py

from typing import Final


def howManyGames(p: int, d: int, m: int, s: int) -> int:
    game_count = 0
    budget = s
    current_price = p

    while budget >= current_price:
        budget -= current_price
        game_count += 1
        current_price = max(current_price - d, m)

    return game_count


# --- demo run ---
if __name__ == "__main__":
    print(howManyGames(20, 3, 6, 80))  # Expected: 6
    print(howManyGames(20, 3, 6, 85))  # Expected: 7
    print(howManyGames(20, 3, 6, 23))  # Small budget test
