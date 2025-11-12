// solution.swift

func introTutorial(V: Int, arr: [Int]) -> Int {
    var left = 0
    var right = arr.count - 1

    while left <= right {
        let mid = (left + right) / 2
        if arr[mid] == V {
            return mid
        } else if arr[mid] < V {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    return -1
}

// --- demo run ---
let arr = [1, 4, 5, 7, 9, 12]
print(introTutorial(V: 4, arr: arr)) // Expected: 1
print(introTutorial(V: 9, arr: arr)) // Expected: 4
print(introTutorial(V: 12, arr: arr)) // Expected: 5