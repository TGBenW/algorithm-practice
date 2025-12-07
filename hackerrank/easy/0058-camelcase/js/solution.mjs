// solution.mjs

export function camelcase(s) {
  if (!s || s.length === 0) return 0;

  let count = 1;
  for (let i = 0; i < s.length; i++) {
    const ch = s[i];
    if (ch >= "A" && ch <= "Z") {
      count++;
    }
  }
  return count;
}

// --- demo run ---
if (import.meta.url === `file://${process.argv[1]}`) {
  const sample = "saveChangesInTheEditor"; // Expected: 5
  console.log(camelcase(sample));
}
