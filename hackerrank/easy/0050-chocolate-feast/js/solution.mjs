// solution.mjs

export function chocolateFeast(n, c, m) {
  let totalChocolates = Math.floor(n / c);
  let wrappers = totalChocolates;

  while (wrappers >= m) {
    const newChocolates = Math.floor(wrappers / m);
    totalChocolates += newChocolates;
    wrappers = (wrappers % m) + newChocolates;
  }

  return totalChocolates;
}

// --- demo run with sample input ---
if (import.meta.url === `file://${process.argv[1]}`) {
  const tests = [
    [10, 2, 5], // Expected: 6
    [12, 4, 4], // Expected: 3
    [6, 2, 2]   // Expected: 5
  ];

  for (const [n, c, m] of tests) {
    console.log(chocolateFeast(n, c, m));
  }
}
