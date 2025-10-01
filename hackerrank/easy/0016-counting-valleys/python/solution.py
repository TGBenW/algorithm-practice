## solution.py

def counting_valleys(steps: int, path: str) -> int:
    level = 0
    valleys = 0
    for step in path:
        if step == "U":
            level += 1
            if level == 0:
                valleys += 1
        else:
            level -= 1
    return valleys


# --- demo run ---
if __name__ == "__main__":
    print(counting_valleys(8, "UDDDUDUU"))  # 1