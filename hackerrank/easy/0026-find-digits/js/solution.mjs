// solution.mjs

export function findDigits(n) {
  const digits = String(n).split('').map(Number);
  let count = 0;
  for (const d of digits) {
    if (d !== 0 && n % d === 0) count++;
  }
  return count;
}

// --- demo run (from sample) ---
console.log(findDigits(12));   // 2
console.log(findDigits(1012)); // 3