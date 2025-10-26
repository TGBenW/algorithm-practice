// solution.swift

func appendAndDelete(s: String, t: String, k: Int) -> String {
    // If we can remove and rebuild both entirely
    if k >= (s.count + t.count) {
        return "Yes"
    }

    let sArr = Array(s)
    let tArr = Array(t)
    let minLen = min(sArr.count, tArr.count)
    var common = 0

    for i in 0..<minLen {
        if sArr[i] == tArr[i] {
            common += 1
        } else {
            break
        }
    }

    let deletions = sArr.count - common
    let additions = tArr.count - common
    let totalChanges = deletions + additions

    if k >= totalChanges && (k - totalChanges) % 2 == 0 {
        return "Yes"
    } else {
        return "No"
    }
}

// --- demo runs ---
print(appendAndDelete(s: "hackerhappy", t: "hackerrank", k: 9)) // Yes
print(appendAndDelete(s: "aba", t: "aba", k: 7)) // Yes
print(appendAndDelete(s: "ashley", t: "ash", k: 2)) // No