// solution.swift — minimal Swift template (single-file script)
// Run: swift path/to/swift/solution.swift

import Foundation

// Example signature (edit to your task):
func solve(/* params */) -> /* ReturnType */ {
    // TODO: implement
    fatalError("Not implemented")
}

// --- Minimal assert helper for quick checks ---
@discardableResult
func assertEqual<T: Equatable>(_ a: T, _ b: T, _ msg: String = "") -> Bool {
    if a != b {
        fputs("❌ Assert failed: \(a) != \(b) \(msg)\n", stderr)
        exit(1)
    }
    return true
}

// --- Manual run (optional) ---
// let got = solve(/* ... */)
// assertEqual(got, /* expected */)
// print("✅ OK")
