// solution.mjs

export function jumpingOnClouds(c, k) {
  let energy = 100;
  let pos = 0;
  const n = c.length;
  do {
    pos = (pos + k) % n;
    energy -= c[pos] === 1 ? 3 : 1;
  } while (pos !== 0);
  return energy;
}

// --- demo run (from sample) ---
const c0 = [0, 0, 1, 0, 0, 1, 1, 0];
console.log(jumpingOnClouds(c0, 2)); // 92