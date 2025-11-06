// solution.mjs

export function equalizeArray(arr) {
  const freq = {};
  for (const num of arr) {
    freq[num] = (freq[num] || 0) + 1;
  }
  const maxFreq = Math.max(...Object.values(freq));
  return arr.length - maxFreq;
}

// --- demo runs ---
console.log(equalizeArray([3, 3, 2, 1, 3])); // 2
console.log(equalizeArray([1, 2, 2, 3]));    // 2