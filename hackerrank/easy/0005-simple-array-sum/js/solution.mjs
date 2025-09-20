// solution.mjs

export function simpleArraySum(ar) {
  return ar.reduce((a, b) => a + b, 0);
}

// --- demo run ---
console.log(simpleArraySum([1, 2, 3, 4, 10, 11])); // 31