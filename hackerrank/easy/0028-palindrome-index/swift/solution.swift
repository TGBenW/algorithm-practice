// solution.swift

func palindromeIndex(s: String) -> Int {
    func isPalindrome(_ chars: [Character], _ i0: Int, _ j0: Int) -> Bool {
        var i = i0, j = j0
        while i < j {
            if chars[i] != chars[j] { return false }
            i += 1; j -= 1
        }
        return true
    }

    let chars = Array(s)
    var L = 0
    var R = chars.count - 1

    while L < R {
        if chars[L] == chars[R] {
            L += 1; R -= 1
        } else {
            if isPalindrome(chars, L + 1, R) { return L }
            if isPalindrome(chars, L, R - 1) { return R }
            return -1
        }
    }
    return -1
}

// --- demo run (from samples) ---
print(palindromeIndex(s: "aaab")) // 3
print(palindromeIndex(s: "baa"))  // 0
print(palindromeIndex(s: "aaa"))  // -1