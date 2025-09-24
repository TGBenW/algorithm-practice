// solution.mjs

export function aVeryBigSum(ar) {
  return ar.reduce((acc, x) => acc + x, 0);
}

// --- demo run ---
console.log(aVeryBigSum([1000000001, 1000000002, 1000000003, 1000000004, 1000000005])); // 5000000015
