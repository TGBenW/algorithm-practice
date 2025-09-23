// solution.mjs

export function kangaroo(x1, v1, x2, v2) {
  if (v1 === v2) return x1 === x2 ? "YES" : "NO";
  const dx = x2 - x1;
  const dv = v1 - v2;
  // divisible and n >= 0
  return dx % dv === 0 && dx / dv >= 0 ? "YES" : "NO";
}

// --- demo run ---
console.log(kangaroo(0, 3, 4, 2)); // YES
console.log(kangaroo(0, 2, 5, 3)); // NO