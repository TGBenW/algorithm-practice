## solution.py

from typing import List, Tuple


def acmTeam(topic: List[str]) -> List[int]:
    n = len(topic)
    if n < 2:
        return [0, 0]
    m = len(topic[0])

    max_known = 0
    teams_count = 0

    for i in range(n - 1):
        for j in range(i + 1, n):
            known_for_this_combo = 0

            # count topics known by at least one of the two attendees
            for k in range(m):
                if topic[i][k] == "1" or topic[j][k] == "1":
                    known_for_this_combo += 1

            if known_for_this_combo > max_known:
                max_known = known_for_this_combo
                teams_count = 1
            elif known_for_this_combo == max_known:
                teams_count += 1

    return [max_known, teams_count]


# --- demo run ---
if __name__ == "__main__":
    sample_topics = [
        "10101",
        "11100",
        "11010",
        "00101",
    ]
    # Expected: [5, 2]
    print(acmTeam(sample_topics))
