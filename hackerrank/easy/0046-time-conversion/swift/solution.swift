// solution.swift

import Foundation

func timeConversion(s: String) -> String {
    let period = String(s.suffix(2))                // "AM" or "PM"
    let core = s.dropLast(2)                        // "hh:mm:ss"
    let parts = core.split(separator: ":")
    guard parts.count == 3,
          let hour = Int(parts[0]),
          let minute = Int(parts[1]),
          let second = Int(parts[2]) else {
        return "Invalid time format"
    }

    var hh = hour
    if period == "AM" {
        if hour == 12 { hh = 0 }
    } else { // PM
        if hour != 12 { hh = hour + 12 }
    }
    return String(format: "%02d:%02d:%02d", hh, minute, second)
}

// --- demo run ---
print(timeConversion(s: "07:05:45PM")) // Expected: 19:05:45
print(timeConversion(s: "12:01:00PM")) // Expected: 12:01:00
print(timeConversion(s: "12:01:00AM")) // Expected: 00:01:00