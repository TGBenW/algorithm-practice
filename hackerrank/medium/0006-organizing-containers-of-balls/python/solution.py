## solution.py

from typing import List


def organizingContainers(container: List[List[int]]) -> str:
    n = len(container)
    if n == 0:
        return "Possible"

    m = len(container[0])

    # Total balls per container (row sums)
    container_sums = [sum(row) for row in container]

    # Total balls per type (column sums)
    type_sums = [0] * m
    for i in range(n):
        for j in range(m):
            type_sums[j] += container[i][j]

    container_sums.sort()
    type_sums.sort()

    return "Possible" if container_sums == type_sums else "Impossible"


# --- demo run ---
if __name__ == "__main__":
    sample1 = [
        [1, 1],
        [1, 1],
    ]
    print(organizingContainers(sample1))  # Possible

    sample2 = [
        [0, 2],
        [1, 1],
    ]
    print(organizingContainers(sample2))  # Impossible

    sample3 = [
        [1, 3, 1],
        [2, 1, 2],
        [3, 3, 3],
    ]
    print(organizingContainers(sample3))  # Impossible

    sample4 = [
        [0, 2, 1],
        [1, 1, 1],
        [2, 0, 0],
    ]
    print(organizingContainers(sample4))  # Possible
