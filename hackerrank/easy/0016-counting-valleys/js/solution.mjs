// solution.mjs

export function countingValleys(steps, path) {
  let level = 0;
  let valleys = 0;
  for (const step of path) {
    if (step === "U") {
      level++;
      if (level === 0) valleys++;
    } else {
      level--;
    }
  }
  return valleys;
}

// --- demo run ---
console.log(countingValleys(8, "UDDDUDUU")); // 1