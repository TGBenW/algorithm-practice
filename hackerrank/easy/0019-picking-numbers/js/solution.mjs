// solution.mjs

export function pickingNumbers(a) {
  const freq = new Map();
  for (const v of a) freq.set(v, (freq.get(v) || 0) + 1);
  let best = 0;
  for (const [x, cnt] of freq.entries()) {
    const withNext = cnt + (freq.get(x + 1) || 0);
    if (withNext > best) best = withNext;
  }
  return best;
}

// --- demo run ---
console.log(pickingNumbers([4, 6, 5, 3, 3, 1]));   // 3
console.log(pickingNumbers([1, 2, 2, 3, 1, 2]));   // 5