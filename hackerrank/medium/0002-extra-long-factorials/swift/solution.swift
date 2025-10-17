// solution.swift

func extraLongFactorials(n: Int) {
    var digits = [1] // least significant digit first

    if n >= 2 {
        for i in 2...n {
            var carry = 0
            for idx in 0..<digits.count {
                let prod = digits[idx] * i + carry
                digits[idx] = prod % 10
                carry = prod / 10
            }
            while carry > 0 {
                digits.append(carry % 10)
                carry /= 10
            }
        }
    }

    let out = digits.reversed().map(String.init).joined()
    print(out)
}

// --- demo run ---
extraLongFactorials(n: 10) // 3628800
extraLongFactorials(n: 25) // 15511210043330985984000000