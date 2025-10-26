// solution.mjs

export function appendAndDelete(s, t, k) {
  if (k >= s.length + t.length) return "Yes";

  let common = 0;
  for (let i = 0; i < Math.min(s.length, t.length); i++) {
    if (s[i] === t[i]) common++;
    else break;
  }

  const deletions = s.length - common;
  const additions = t.length - common;
  const totalChanges = deletions + additions;

  return k >= totalChanges && (k - totalChanges) % 2 === 0 ? "Yes" : "No";
}

// --- demo runs ---
console.log(appendAndDelete("hackerhappy", "hackerrank", 9)); // Yes
console.log(appendAndDelete("aba", "aba", 7)); // Yes
console.log(appendAndDelete("ashley", "ash", 2)); // No