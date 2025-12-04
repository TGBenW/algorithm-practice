## solution.py

from typing import List

def flatlandSpaceStations(n: int, c: List[int]) -> int:
    station_count = len(c)
    if station_count == 0:
        # Constraints guarantee at least one station, but handle safely.
        return 0

    if station_count == n:
        return 0

    sorted_stations = sorted(c)

    # Edge distances
    max_dist = max(sorted_stations[0], (n - 1) - sorted_stations[-1])

    # Inner gaps
    for i in range(1, station_count):
        gap = sorted_stations[i] - sorted_stations[i - 1]
        dist_in_gap = gap // 2
        if dist_in_gap > max_dist:
            max_dist = dist_in_gap

    return max_dist


# --- demo run ---
if __name__ == "__main__":
    print(flatlandSpaceStations(5, [0, 4]))                 # Expected: 2
    print(flatlandSpaceStations(6, [0, 1, 2, 4, 3, 5]))     # Expected: 0
