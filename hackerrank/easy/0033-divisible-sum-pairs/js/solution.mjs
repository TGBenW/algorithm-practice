// solution.mjs

export function divisibleSumPairs(n, k, ar) {
  const remainderCounts = new Array(k).fill(0);
  let result = 0;

  for (const num of ar) {
    remainderCounts[num % k]++;
  }

  // remainder 0
  result += (remainderCounts[0] * (remainderCounts[0] - 1)) / 2;

  for (let i = 1; i < Math.floor(k / 2) + (k % 2); i++) {
    result += remainderCounts[i] * remainderCounts[k - i];
  }

  if (k % 2 === 0) {
    result += (remainderCounts[k / 2] * (remainderCounts[k / 2] - 1)) / 2;
  }

  return result;
}

// --- demo run (sample) ---
console.log(divisibleSumPairs(6, 3, [1, 3, 2, 6, 1, 2])); // 5