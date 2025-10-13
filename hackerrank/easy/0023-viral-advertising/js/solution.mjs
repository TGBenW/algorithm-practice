// solution.mjs

export function viralAdvertising(n) {
  let cumulative = 0;
  let shared = 5;
  for (let day = 1; day <= n; day++) {
    const liked = Math.floor(shared / 2);
    cumulative += liked;
    shared = liked * 3;
  }
  return cumulative;
}

// --- demo run ---
console.log(viralAdvertising(3)); // 9
console.log(viralAdvertising(5)); // 24