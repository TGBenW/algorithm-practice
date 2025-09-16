// solution.swift

func dayOfProgrammer(year: Int) -> String {
    var dayMonth = ""
    if year == 1918 {
        dayMonth = "26.09"
    } else if year < 1918 {
        dayMonth = year % 4 == 0 ? "12.09" : "13.09"
    } else {
        dayMonth = (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0) ? "12.09" : "13.09"
    }
    return "\(dayMonth).\(year)"
}

// --- demo run ---
let input = 2017
print(dayOfProgrammer(year: input))  // 13.09.2017