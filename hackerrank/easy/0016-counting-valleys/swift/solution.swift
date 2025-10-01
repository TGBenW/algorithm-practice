// solution.swift

func countingValleys(steps: Int, path: String) -> Int {
    var level = 0
    var valleys = 0
    for step in path {
        if step == "U" {
            level += 1
            if level == 0 { valleys += 1 }
        } else {
            level -= 1
        }
    }
    return valleys
}

// --- demo run ---
print(countingValleys(steps: 8, path: "UDDDUDUU"))  // 1