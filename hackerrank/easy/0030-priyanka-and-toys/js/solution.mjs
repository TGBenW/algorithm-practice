// solution.mjs

export function toys(w) {
  if (!w.length) return 0;
  const arr = [...w].sort((a, b) => a - b);
  let containers = 1;
  let base = arr[0];

  for (const weight of arr) {
    if (weight > base + 4) {
      containers++;
      base = weight;
    }
  }
  return containers;
}

// --- demo run (sample) ---
console.log(toys([1, 2, 3, 21, 7, 12, 14, 21])); // 4