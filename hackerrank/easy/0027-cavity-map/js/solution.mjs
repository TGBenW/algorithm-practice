// solution.mjs

export function cavityMap(grid) {
  const n = grid.length;
  if (n < 3) return grid.slice();

  // numeric original for comparisons
  const orig = grid.map(row => row.split('').map(ch => ch.charCodeAt(0) - 48));
  // mutable char matrix for output
  const out = grid.map(row => row.split(''));

  for (let i = 1; i < n - 1; i++) {
    for (let j = 1; j < n - 1; j++) {
      const v = orig[i][j];
      if (
        v > orig[i - 1][j] &&
        v > orig[i + 1][j] &&
        v > orig[i][j - 1] &&
        v > orig[i][j + 1]
      ) {
        out[i][j] = 'X';
      }
    }
  }
  return out.map(row => row.join(''));
}

// --- demo run (from sample) ---
const g0 = ["1112", "1912", "1892", "1234"];
console.log(cavityMap(g0)); // [ '1112', '1X12', '18X2', '1234' ]