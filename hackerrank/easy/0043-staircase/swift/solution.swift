// solution.swift

import Foundation

func staircase(n: Int) {
    guard n > 0 else { return }
    for i in 1...n {
        let spaces = String(repeating: " ", count: n - i)
        let hashes = String(repeating: "#", count: i)
        print(spaces + hashes)
    }
}

// --- demo run ---
staircase(n: 6)
/*
Expected:
     #
    ##
   ###
  ####
 #####
######
*/