// solution.mjs

export function climbingLeaderboard(ranked, player) {
  const ranking = [...new Set(ranked)].sort((a, b) => b - a);
  const result = [];

  function binaryRank(score) {
    let low = 0, high = ranking.length - 1;
    while (low <= high) {
      const mid = Math.floor((low + high) / 2);
      if (ranking[mid] === score) return mid + 1;
      else if (ranking[mid] > score) low = mid + 1;
      else high = mid - 1;
    }
    return low + 1;
  }

  for (const score of player) result.push(binaryRank(score));
  return result;
}

// --- demo run ---
console.log(climbingLeaderboard(
  [100, 100, 50, 40, 40, 20, 10],
  [5, 25, 50, 120]
)); // [6, 4, 2, 1]