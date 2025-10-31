// solution.mjs

export function nonDivisibleSubset(k, s) {
  if (k <= 0) return 0;
  const counts = Array(k).fill(0);
  for (const num of s) counts[num % k]++;

  let total = Math.min(counts[0], 1);

  if (k > 1) {
    for (let i = 1; i < (k + 1) / 2; i++) {
      total += Math.max(counts[i], counts[k - i]);
    }
    if (k % 2 === 0) total += Math.min(counts[k / 2], 1);
  }

  return total;
}

// --- demo runs ---
console.log(nonDivisibleSubset(3, [1, 7, 2, 4]));               // 3
console.log(nonDivisibleSubset(4, [19,10,12,10,24,25,22]));     // 3