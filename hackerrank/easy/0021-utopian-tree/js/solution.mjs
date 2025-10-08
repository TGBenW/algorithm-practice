// solution.mjs

export function utopianTree(n) {
  let h = 1;
  for (let cycle = 1; cycle <= n; cycle++) {
    if (cycle % 2 === 1) h *= 2; // spring
    else h += 1;                 // summer
  }
  return h;
}

// --- demo run ---
console.log(utopianTree(0)); // 1
console.log(utopianTree(1)); // 2
console.log(utopianTree(4)); // 7
console.log(utopianTree(5)); // 14