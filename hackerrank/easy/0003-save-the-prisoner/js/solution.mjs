// solution.mjs

export function saveThePrisoner(n, m, s) {
  const x = (s + m - 1) % n;
  return x === 0 ? n : x;
}

// --- demo run ---
if (import.meta.url === `file://${process.argv[1]}`) {
  console.log(saveThePrisoner(5, 2, 1)); // 2
  console.log(saveThePrisoner(5, 2, 2)); // 3
  console.log(saveThePrisoner(7, 19, 2)); // 6
  console.log(saveThePrisoner(3, 7, 3)); // 3
}
