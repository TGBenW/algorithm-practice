// solution.mjs

export function sockMerchant(n, ar) {
  const counts = new Map();
  for (const c of ar) counts.set(c, (counts.get(c) || 0) + 1);
  let pairs = 0;
  for (const v of counts.values()) pairs += Math.floor(v / 2);
  return pairs;
}

// --- demo run ---
const arr = [10, 20, 20, 10, 10, 30, 50, 10, 20];
console.log(sockMerchant(arr.length, arr)); // 3