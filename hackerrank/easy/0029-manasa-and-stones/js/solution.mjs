// solution.mjs

export function stones(n, a, b) {
  if (a === b) return [(n - 1) * a];
  const low = Math.min(a, b), high = Math.max(a, b);
  const res = [];
  for (let k = 0; k < n; k++) {
    res.push((n - 1 - k) * low + k * high);
  }
  return res;
}

// --- demo run (from samples) ---
console.log(stones(3, 1, 2));      // [2, 3, 4]
console.log(stones(4, 10, 100));   // [30, 120, 210, 300]