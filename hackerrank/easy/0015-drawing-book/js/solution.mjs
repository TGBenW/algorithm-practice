// solution.mjs

export function pageCount(n, p) {
  const fromFront = Math.floor(p / 2);
  const fromBack = Math.floor(n / 2) - Math.floor(p / 2);
  return Math.min(fromFront, fromBack);
}

// --- demo run ---
console.log(pageCount(6, 2)); // 1
console.log(pageCount(5, 4)); // 0