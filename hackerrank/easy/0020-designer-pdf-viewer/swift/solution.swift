// solution.swift

func designerPdfViewer(h: [Int], word: String) -> Int {
    var topHeight = 0
    for ch in word {
        // 'a' has code point 97 in ASCII/Unicode
        let idx = Int(ch.unicodeScalars.first!.value) - 97
        topHeight = max(topHeight, h[idx])
    }
    return topHeight * word.count
}

// --- demo run ---
let h0 = [1,3,1,3,1,4,1,3,2,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5]
print(designerPdfViewer(h: h0, word: "abc"))   // 9

let h1 = [1,3,1,3,1,4,1,3,2,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,7]
print(designerPdfViewer(h: h1, word: "zaba"))  // 28