// solution.swift

func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    // Meet if (x2 - x1) % (v1 - v2) == 0 and n >= 0; handle equal speeds
    if v1 == v2 { return x1 == x2 ? "YES" : "NO" }
    let dx = x2 - x1
    let dv = v1 - v2
    if dx % dv == 0 && dx / dv >= 0 { return "YES" }
    return "NO"
}

// --- demo run ---
print(kangaroo(x1: 0, v1: 3, x2: 4, v2: 2)) // YES
print(kangaroo(x1: 0, v1: 2, x2: 5, v2: 3)) // NO