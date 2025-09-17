// solution.mjs

export function hurdleRace(k, height) {
  const maxHurdle = Math.max(...height);
  return k >= maxHurdle ? 0 : maxHurdle - k;
}

// --- demo run ---
if (import.meta.url === `file://${process.argv[1]}`) {
  const k = 4;
  const hurdles = [1, 6, 3, 5, 2];
  console.log(hurdleRace(k, hurdles)); // 2
}