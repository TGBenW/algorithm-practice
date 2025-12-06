## solution.py

from typing import List

def gridSearch(G: List[str], P: List[str]) -> str:
    R = len(G)
    r = len(P)
    if R == 0 or r == 0:
        return "NO"

    C = len(G[0])
    c = len(P[0])
    if r > R or c > C:
        return "NO"

    first_row = P[0]

    for row in range(R - r + 1):
        line = G[row]
        start = 0

        # find all occurrences of first_row in this line
        while True:
            col = line.find(first_row, start)
            if col == -1:
                break

            ok = True
            for k in range(1, r):
                if G[row + k][col:col + c] != P[k]:
                    ok = False
                    break

            if ok:
                return "YES"

            # move start to search for the next occurrence in the same line
            start = col + 1

    return "NO"


# --- demo run ---
if __name__ == "__main__":
    G1 = [
        "7283455864",
        "6731158619",
        "8988242643",
        "3830589324",
        "2229505813",
        "5633845374",
        "6473530293",
        "7053106601",
        "0834282956",
        "4607924137",
    ]
    P1 = ["9505", "3845", "3530"]
    print(gridSearch(G1, P1))  # YES

    G2 = [
        "400453592126560",
        "114213133098692",
        "474386082879648",
        "522356951189169",
        "887109450487496",
        "252802633388782",
        "502771484966748",
        "075975207693780",
        "511799789562806",
        "404007454272504",
        "549043809916080",
        "962410809534811",
        "445893523733475",
        "768705303214174",
        "650629270887160",
    ]
    P2 = ["99", "99"]
    print(gridSearch(G2, P2))  # NO
