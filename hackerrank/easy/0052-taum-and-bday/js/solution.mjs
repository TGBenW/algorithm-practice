// solution.mjs

export function taumBday(b, w, bc, wc, z) {
  const B = BigInt(b);
  const W = BigInt(w);
  const BC = BigInt(bc);
  const WC = BigInt(wc);
  const Z = BigInt(z);

  const effectiveBc = BC < WC + Z ? BC : WC + Z;
  const effectiveWc = WC < BC + Z ? WC : BC + Z;

  return (B * effectiveBc + W * effectiveWc).toString();
}

// --- demo run ---
if (import.meta.url === `file://${process.argv[1]}`) {
  const tests = [
    [10, 10, 1, 1, 1],
    [5, 9, 2, 3, 4],
    [3, 6, 9, 1, 1],
    [7, 7, 4, 2, 1],
    [3, 3, 1, 9, 2],
  ];

  for (const t of tests) console.log(taumBday(...t));
}
