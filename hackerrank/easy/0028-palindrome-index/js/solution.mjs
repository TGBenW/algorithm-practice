// solution.mjs

export function palindromeIndex(s) {
  const chars = [...s];
  const isPal = (i, j) => {
    while (i < j) {
      if (chars[i] !== chars[j]) return false;
      i++; j--;
    }
    return true;
  };

  let L = 0, R = chars.length - 1;
  while (L < R) {
    if (chars[L] === chars[R]) {
      L++; R--;
    } else {
      if (isPal(L + 1, R)) return L;
      if (isPal(L, R - 1)) return R;
      return -1;
    }
  }
  return -1;
}

// --- demo run (from samples) ---
console.log(palindromeIndex("aaab")); // 3
console.log(palindromeIndex("baa"));  // 0
console.log(palindromeIndex("aaa"));  // -1