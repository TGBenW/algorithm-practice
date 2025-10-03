// solution.swift

func catAndMouse(x: Int, y: Int, z: Int) -> String {
    let da = abs(z - x)
    let db = abs(z - y)
    if da == db { return "Mouse C" }
    return da < db ? "Cat A" : "Cat B"
}

// --- demo run ---
print(catAndMouse(x: 1, y: 2, z: 3)) // Cat B
print(catAndMouse(x: 1, y: 3, z: 2)) // Mouse C