// solution.mjs

export function biggerIsGreater(w) {
  const chars = w.split("");
  const n = chars.length;

  if (n < 2) return "no answer";

  // Step 1: find pivot i
  let i = n - 2;
  while (i >= 0 && chars[i] >= chars[i + 1]) {
    i--;
  }
  if (i < 0) {
    return "no answer";
  }

  // Step 2: find rightmost j > i with chars[j] > chars[i]
  let j = n - 1;
  while (chars[j] <= chars[i]) {
    j--;
  }

  // Step 3: swap chars[i], chars[j]
  [chars[i], chars[j]] = [chars[j], chars[i]];

  // Step 4: reverse suffix from i+1 to end
  let left = i + 1;
  let right = n - 1;
  while (left < right) {
    [chars[left], chars[right]] = [chars[right], chars[left]];
    left++;
    right--;
  }

  return chars.join("");
}

// --- demo run ---
if (import.meta.url === `file://${process.argv[1]}`) {
  const tests = [
    "ab",
    "bb",
    "hefg",
    "dhck",
    "dkhc",
    "lmno",
    "dcba",
    "dcbb",
    "abdc",
    "abcd",
    "fedcbabcd",
  ];

  for (const t of tests) {
    console.log(`${t} -> ${biggerIsGreater(t)}`);
  }
}
