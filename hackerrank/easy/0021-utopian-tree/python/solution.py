## solution.py

def utopian_tree(n: int) -> int:
    h = 1
    for cycle in range(1, n + 1):
        if cycle % 2 == 1:  # spring
            h *= 2
        else:               # summer
            h += 1
    return h


# --- demo run ---
if __name__ == "__main__":
    print(utopian_tree(0))  # 1
    print(utopian_tree(1))  # 2
    print(utopian_tree(4))  # 7
    print(utopian_tree(5))  # 14