// solution.mjs

export function repeatedString(s, n) {
  const fullRepeats = Math.floor(n / s.length);
  const leftover = n % s.length;
  const countA = s.split('a').length - 1;
  const prefixCount = s.slice(0, leftover).split('a').length - 1;
  return fullRepeats * countA + prefixCount;
}

// --- demo runs ---
console.log(repeatedString('aba', 10));          // 7
console.log(repeatedString('a', 1000000000000)); // 1000000000000