// solution.swift

func bonAppetit(bill: [Int], k: Int, b: Int) {
    // Sum all items except the one Anna didn't eat, then split by 2
    var sum = 0
    for (idx, price) in bill.enumerated() {
        if idx != k { sum += price }
    }
    let annasShare = sum / 2
    if annasShare == b {
        print("Bon Appetit")
    } else {
        print(b - annasShare)
    }
}

// --- demo run ---
bonAppetit(bill: [3, 10, 2, 9], k: 1, b: 12) // 5
bonAppetit(bill: [3, 10, 2, 9], k: 1, b: 7)  // Bon Appetit