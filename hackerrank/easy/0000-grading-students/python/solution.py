from typing import List

def grading_students(grades: List[int]) -> List[int]:
    result = []
    for g in grades:
        if g < 38:
            result.append(g)
            continue
        next_multiple = (g // 5) * 5 + 5
        diff = next_multiple - g
        result.append(next_multiple if diff < 3 else g)
    return result


# --- demo run ---
if __name__ == "__main__":
    input_data = [73, 67, 38, 33]
    print(grading_students(input_data))
    # Expected: [75, 67, 40, 33]