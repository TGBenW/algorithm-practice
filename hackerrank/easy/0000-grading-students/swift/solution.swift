// solution.swift

func gradingStudents(grades: [Int]) -> [Int] {

    func gradeRoundUp(grade: Int) -> Int {
        let nextMultipleOfFive = grade + (5 - grade % 5)
        return (nextMultipleOfFive - grade < 3) ? nextMultipleOfFive : grade
    }

    func gradeCheck(grade: Int) -> Int {
        return (grade < 38) ? grade : gradeRoundUp(grade: grade)
    }

    return grades.map { gradeCheck(grade: $0) }
}

// --- demo run ---
let input = [73, 67, 38, 33]
let result = gradingStudents(grades: input)
print(result)   // [75, 67, 40, 33]

