// solution.mjs

export function jumpingOnClouds(c) {
  let jumps = 0;
  let i = 0;
  while (i < c.length - 1) {
    if (i + 2 < c.length && c[i + 2] === 0) {
      i += 2;
    } else {
      i += 1;
    }
    jumps++;
  }
  return jumps;
}

// --- demo runs ---
console.log(jumpingOnClouds([0, 0, 1, 0, 0, 1, 0])); // 4
console.log(jumpingOnClouds([0, 0, 0, 0, 1, 0]));    // 3