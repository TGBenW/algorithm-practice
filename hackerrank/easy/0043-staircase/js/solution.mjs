// solution.mjs

export function staircase(n) {
  if (n <= 0) return;
  for (let i = 1; i <= n; i++) {
    const spaces = " ".repeat(n - i);
    const hashes = "#".repeat(i);
    console.log(spaces + hashes);
  }
}

// --- demo run ---
staircase(6);
/*
Expected:
     #
    ##
   ###
  ####
 #####
######
*/