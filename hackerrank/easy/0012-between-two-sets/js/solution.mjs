// solution.mjs

export function getTotalX(a, b) {
  function gcd(x, y) {
    x = Math.abs(x); y = Math.abs(y);
    while (y !== 0) { const r = x % y; x = y; y = r; }
    return x;
  }
  function lcm(x, y) {
    if (x === 0 || y === 0) return 0;
    return Math.trunc(x / gcd(x, y)) * y;
  }
  const lcmOfArray = (arr) => arr.slice(1).reduce((acc, v) => lcm(acc, v), arr[0]);
  const gcdOfArray = (arr) => arr.slice(1).reduce((acc, v) => gcd(acc, v), arr[0]);

  const L = lcmOfArray(a);
  const G = gcdOfArray(b);
  if (L === 0 || G === 0 || G % L !== 0) return 0;

  let count = 0;
  for (let x = L; x <= G; x += L) if (G % x === 0) count++;
  return count;
}

// --- demo run ---
console.log(getTotalX([2, 4], [16, 32, 96])); // 3