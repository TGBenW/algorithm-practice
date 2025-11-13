// solution.mjs

export function minimumDistances(a) {
  const last = new Map();
  let min = Infinity;

  for (let i = 0; i < a.length; i++) {
    const v = a[i];
    if (last.has(v)) {
      const d = i - last.get(v);
      if (d < min) min = d;
      if (min === 1) return 1; // early exit
    }
    last.set(v, i);
  }

  return min === Infinity ? -1 : min;
}

// --- demo run ---
const demo1 = [7, 1, 3, 4, 1, 7];
console.log(minimumDistances(demo1)); // Expected: 3

const demo2 = [1, 2, 3];
console.log(minimumDistances(demo2)); // Expected: -1

const demo3 = [5, 5, 5];
console.log(minimumDistances(demo3)); // Expected: 1