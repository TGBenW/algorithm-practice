## solution.py

from typing import List

def forming_magic_square(s: List[List[int]]) -> int:
    n = 3

    def siamese(n: int) -> List[List[int]]:
        a = [[0] * n for _ in range(n)]
        i, j = 0, n // 2
        for num in range(1, n * n + 1):
            a[i][j] = num
            ni, nj = (i - 1) % n, (j + 1) % n
            if a[ni][nj] == 0:
                i, j = ni, nj
            else:
                i = (i + 1) % n
        return a

    def rotate90(m: List[List[int]]) -> List[List[int]]:
        return [[m[n - 1 - j][i] for j in range(n)] for i in range(n)]

    def mirror_vert(m: List[List[int]]) -> List[List[int]]:
        return m[::-1]

    base = siamese(n)
    cands = []
    cur = base
    for _ in range(4):
        cands.append(cur)
        cur = rotate90(cur)
    cur = mirror_vert(base)
    for _ in range(4):
        cands.append(cur)
        cur = rotate90(cur)

    best = 10**9
    for m in cands:
        cost = sum(abs(s[i][j] - m[i][j]) for i in range(n) for j in range(n))
        if cost < best:
            best = cost
    return best


# --- demo run ---
if __name__ == "__main__":
    print(forming_magic_square([[4,9,2],[3,5,7],[8,1,5]]))  # 1
    print(forming_magic_square([[4,8,2],[4,5,7],[6,1,6]]))  # 4