// solution.mjs

export function birthdayCakeCandles(candles) {
  if (!Array.isArray(candles) || candles.length === 0) return 0;
  const maxHeight = Math.max(...candles);
  return candles.filter(h => h === maxHeight).length;
}

// --- demo run ---
console.log(birthdayCakeCandles([3, 2, 1, 3])); // Expected: 2
console.log(birthdayCakeCandles([4, 4, 1, 3, 4])); // Expected: 3