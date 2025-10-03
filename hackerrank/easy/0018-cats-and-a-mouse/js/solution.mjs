// solution.mjs

export function catAndMouse(x, y, z) {
  const da = Math.abs(z - x);
  const db = Math.abs(z - y);
  if (da === db) return "Mouse C";
  return da < db ? "Cat A" : "Cat B";
}

// --- demo run ---
console.log(catAndMouse(1, 2, 3)); // Cat B
console.log(catAndMouse(1, 3, 2)); // Mouse C