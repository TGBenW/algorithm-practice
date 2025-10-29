// solution.swift

func libraryFine(d1: Int, m1: Int, y1: Int, d2: Int, m2: Int, y2: Int) -> Int {
    if y1 < y2 || (y1 == y2 && m1 < m2) || (y1 == y2 && m1 == m2 && d1 <= d2) {
        return 0
    }
    if y1 > y2 {
        return 10000
    } else if m1 > m2 {
        return 500 * (m1 - m2)
    } else {
        return 15 * (d1 - d2)
    }
}

// --- demo runs ---
print(libraryFine(d1: 9, m1: 6, y1: 2015, d2: 6, m2: 6, y2: 2015)) // 45
print(libraryFine(d1: 1, m1: 1, y1: 2018, d2: 31, m2: 12, y2: 2017)) // 10000
print(libraryFine(d1: 5, m1: 7, y1: 2024, d2: 1, m2: 6, y2: 2024)) // 500