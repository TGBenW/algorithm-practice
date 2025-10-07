## solution.py

from typing import List

def designer_pdf_viewer(h: List[int], word: str) -> int:
    top = 0
    for ch in word:
        idx = ord(ch) - 97  # 'a' -> 97
        if h[idx] > top:
            top = h[idx]
    return top * len(word)


# --- demo run ---
if __name__ == "__main__":
    h0 = [1,3,1,3,1,4,1,3,2,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5]
    print(designer_pdf_viewer(h0, "abc"))   # 9

    h1 = [1,3,1,3,1,4,1,3,2,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,7]
    print(designer_pdf_viewer(h1, "zaba"))  # 28