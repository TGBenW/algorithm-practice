// solution.mjs

export function squares(a, b) {
  const start = Math.ceil(Math.sqrt(a));
  const end = Math.floor(Math.sqrt(b));
  return Math.max(0, end - start + 1);
}

// --- demo runs ---
console.log(squares(3, 9));    // 2
console.log(squares(17, 24));  // 0
console.log(squares(1, 1));    // 1