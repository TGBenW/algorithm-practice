// solution.mjs

export function howManyGames(p, d, m, s) {
  let gameCount = 0;
  let budget = s;
  let currentPrice = p;

  while (budget >= currentPrice) {
    budget -= currentPrice;
    gameCount += 1;
    currentPrice = Math.max(currentPrice - d, m);
  }

  return gameCount;
}

// --- demo run ---
if (import.meta.url === `file://${process.argv[1]}`) {
  console.log(howManyGames(20, 3, 6, 80)); // Expected: 6
  console.log(howManyGames(20, 3, 6, 85)); // Expected: 7
  console.log(howManyGames(20, 3, 6, 23)); // Small budget test
}
