// solution.mjs

export function miniMaxSum(arr) {
  if (!Array.isArray(arr) || arr.length !== 5) {
    throw new Error("Array must contain exactly 5 elements");
  }
  const sorted = [...arr].sort((a, b) => a - b);
  // JS Number is IEEE-754 double; range is fine for this challenge constraints.
  const sumFirst4 = sorted.slice(0, 4).reduce((acc, x) => acc + x, 0);
  const sumLast4  = sorted.slice(1, 5).reduce((acc, x) => acc + x, 0);
  console.log(`${sumFirst4} ${sumLast4}`);
}

// --- demo run ---
miniMaxSum([1, 2, 3, 4, 5]); // Expected: 10 14