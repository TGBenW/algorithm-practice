// solution.mjs

export function formingMagicSquare(s) {
  const n = 3;

  function siamese(n) {
    const a = Array.from({ length: n }, () => Array(n).fill(0));
    let i = 0, j = Math.floor(n / 2);
    for (let num = 1; num <= n * n; num++) {
      a[i][j] = num;
      const ni = (i - 1 + n) % n;
      const nj = (j + 1) % n;
      if (a[ni][nj] === 0) { i = ni; j = nj; }
      else { i = (i + 1) % n; }
    }
    return a;
  }

  function rotate90(m) {
    const r = Array.from({ length: n }, () => Array(n).fill(0));
    for (let i = 0; i < n; i++) for (let j = 0; j < n; j++) r[j][n - 1 - i] = m[i][j];
    return r;
  }

  function mirrorVert(m) {
    return [...m].reverse();
  }

  const base = siamese(n);
  const cands = [];
  let cur = base;
  for (let k = 0; k < 4; k++) { cands.push(cur); cur = rotate90(cur); }
  cur = mirrorVert(base);
  for (let k = 0; k < 4; k++) { cands.push(cur); cur = rotate90(cur); }

  let best = Infinity;
  for (const m of cands) {
    let cost = 0;
    for (let i = 0; i < n; i++) for (let j = 0; j < n; j++) cost += Math.abs(s[i][j] - m[i][j]);
    if (cost < best) best = cost;
  }
  return best;
}

// --- demo run ---
console.log(formingMagicSquare([[4,9,2],[3,5,7],[8,1,5]])); // 1
console.log(formingMagicSquare([[4,8,2],[4,5,7],[6,1,6]])); // 4