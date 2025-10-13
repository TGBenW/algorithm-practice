// solution.mjs

export function circularArrayRotation(a, k, queries) {
  const n = a.length;
  if (n === 0) return [];
  const r = k % n;
  return queries.map(q => a[(q - r + n) % n]);
}

// --- demo run (from sample) ---
const a0 = [1, 2, 3];
const k0 = 2;
const queries0 = [0, 1, 2];
console.log(circularArrayRotation(a0, k0, queries0)); // [2, 3, 1]