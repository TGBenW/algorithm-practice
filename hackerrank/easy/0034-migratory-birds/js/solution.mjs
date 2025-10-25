// solution.mjs

export function migratoryBirds(arr) {
  if (!arr.length) return 0; // or 1 per platform behavior
  const freq = [0, 0, 0, 0, 0]; // ids 1..5
  for (const id of arr) {
    if (id >= 1 && id <= 5) freq[id - 1]++;
  }
  const maxCount = Math.max(...freq);
  // indexOf gets the first occurrence => smallest id on ties
  return freq.indexOf(maxCount) + 1;
}

// --- demo runs (samples) ---
console.log(migratoryBirds([1, 4, 4, 4, 5, 3]));                 // 4
console.log(migratoryBirds([1,2,3,4,5,4,3,2,1,3,4]));            // 3