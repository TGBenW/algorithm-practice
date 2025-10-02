// solution.mjs

export function getMoneySpent(keyboards, drives, b) {
  const ks = [...keyboards].sort((a, z) => a - z);
  const ds = [...drives].sort((a, z) => z - a);
  let i = 0, j = 0, best = -1;

  while (i < ks.length && j < ds.length) {
    const sum = ks[i] + ds[j];
    if (sum > b) {
      j++;    // drive too expensive
    } else {
      if (sum > best) best = sum;
      i++;    // try more expensive keyboard
    }
  }
  return best;
}

// --- demo run ---
console.log(getMoneySpent([3, 1], [5, 2, 8], 10));    // 9
console.log(getMoneySpent([4], [5], 5));    // -1