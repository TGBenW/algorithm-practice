// solution.swift

import Foundation

func timeInWords(h: Int, m: Int) -> String {
    let numbersInWords: [Int: String] = [
        1: "one", 2: "two", 3: "three", 4: "four", 5: "five",
        6: "six", 7: "seven", 8: "eight", 9: "nine", 10: "ten",
        11: "eleven", 12: "twelve", 13: "thirteen", 14: "fourteen",
        15: "fifteen", 16: "sixteen", 17: "seventeen", 18: "eighteen",
        19: "nineteen", 20: "twenty", 21: "twenty one", 22: "twenty two",
        23: "twenty three", 24: "twenty four", 25: "twenty five",
        26: "twenty six", 27: "twenty seven", 28: "twenty eight",
        29: "twenty nine"
    ]

    func hourWord(_ hour: Int) -> String {
        let normalized = ((hour - 1) % 12) + 1
        return numbersInWords[normalized]!
    }

    switch m {
    case 0:
        return "\(hourWord(h)) o' clock"
    case 1:
        return "\(numbersInWords[1]!) minute past \(hourWord(h))"
    case 15:
        return "quarter past \(hourWord(h))"
    case 30:
        return "half past \(hourWord(h))"
    case 45:
        return "quarter to \(hourWord(h + 1))"
    case 59:
        return "\(numbersInWords[1]!) minute to \(hourWord(h + 1))"
    case 2...29:
        return "\(numbersInWords[m]!) minutes past \(hourWord(h))"
    default:
        let remaining = 60 - m
        return "\(numbersInWords[remaining]!) minutes to \(hourWord(h + 1))"
    }
}

// --- demo run ---
let sample1 = timeInWords(h: 5, m: 47)
print(sample1) // thirteen minutes to six

let sample2 = timeInWords(h: 3, m: 0)
print(sample2) // three o' clock

let sample3 = timeInWords(h: 7, m: 15)
print(sample3) // quarter past seven

let sample4 = timeInWords(h: 12, m: 59)
print(sample4) // one minute to one
