// solution.mjs

export function plusMinus(arr) {
  let pos = 0, neg = 0, zero = 0;
  for (const num of arr) {
    if (num > 0) pos++;
    else if (num < 0) neg++;
    else zero++;
  }
  const n = arr.length;
  console.log((pos / n).toFixed(6));
  console.log((neg / n).toFixed(6));
  console.log((zero / n).toFixed(6));
}

// --- demo run ---
plusMinus([-4, 3, -9, 0, 4, 1]);
// Expected:
// 0.500000
// 0.333333
// 0.166667