// solution.mjs

export function breakingRecords(scores) {
  if (!scores.length) return [0, 0];
  let curMin = scores[0];
  let curMax = scores[0];
  let minBreaks = 0;
  let maxBreaks = 0;

  for (let i = 1; i < scores.length; i++) {
    const s = scores[i];
    if (s > curMax) { curMax = s; maxBreaks++; }
    else if (s < curMin) { curMin = s; minBreaks++; }
  }
  return [maxBreaks, minBreaks];
}

// --- demo run (samples) ---
console.log(breakingRecords([10, 5, 20, 20, 4, 5, 2, 25, 1])); // [2, 4]
console.log(breakingRecords([3, 4, 21, 36, 10, 28, 35, 5, 24, 42])); // [4, 0]