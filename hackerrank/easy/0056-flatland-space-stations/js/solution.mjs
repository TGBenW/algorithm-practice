// solution.mjs

export function flatlandSpaceStations(n, c) {
  const stationCount = c.length;
  if (stationCount === 0) {
    // According to constraints this should not happen, but keep it safe.
    return 0;
  }

  if (stationCount === n) {
    return 0;
  }

  const sorted = [...c].sort((a, b) => a - b);

  // Edge distances
  let maxDist = Math.max(sorted[0], (n - 1) - sorted[stationCount - 1]);

  // Inner gaps
  for (let i = 1; i < stationCount; i++) {
    const gap = sorted[i] - sorted[i - 1];
    const distInGap = Math.floor(gap / 2);
    if (distInGap > maxDist) {
      maxDist = distInGap;
    }
  }

  return maxDist;
}

// --- demo run ---
if (import.meta.url === `file://${process.argv[1]}`) {
  console.log(flatlandSpaceStations(5, [0, 4]));                  // Expected: 2
  console.log(flatlandSpaceStations(6, [0, 1, 2, 4, 3, 5]));      // Expected: 0
}
