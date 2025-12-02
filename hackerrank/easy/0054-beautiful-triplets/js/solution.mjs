// solution.mjs

export function beautifulTriplets(d, arr) {
  const values = new Set(arr);
  let count = 0;

  for (const x of arr) {
    if (values.has(x + d) && values.has(x + 2 * d)) {
      count++;
    }
  }

  return count;
}

// --- demo run ---
if (import.meta.url === `file://${process.argv[1]}`) {
  const dSample = 3;
  const arrSample = [1, 2, 4, 5, 7, 8, 10]; // Expected: 3
  console.log(beautifulTriplets(dSample, arrSample));
}
