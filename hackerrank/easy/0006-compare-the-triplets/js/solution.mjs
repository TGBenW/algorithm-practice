// solution.mjs

export function compareTriplets(a, b) {
  const res = [0, 0]; // [Alice, Bob]
  for (let i = 0; i < a.length; i++) {
    if (a[i] > b[i]) res[0] += 1;
    else if (a[i] < b[i]) res[1] += 1;
  }
  return res;
}

// --- demo run ---
console.log(compareTriplets([5,6,7], [3,6,10]));    // [1, 1]
console.log(compareTriplets([17,28,30], [99,16,8])); // [2, 1]