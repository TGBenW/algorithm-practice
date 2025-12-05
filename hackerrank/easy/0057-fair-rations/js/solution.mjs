// solution.mjs

export function fairRations(B) {
  const arr = [...B];
  const oddCount = arr.filter(x => x % 2 !== 0).length;

  if (oddCount % 2 === 1) {
    return "NO";
  }

  let loavesDistributed = 0;

  for (let i = 0; i < arr.length - 1; i++) {
    if (arr[i] % 2 !== 0) {
      arr[i] += 1;
      arr[i + 1] += 1;
      loavesDistributed += 2;
    }
  }

  return String(loavesDistributed);
}

// --- demo run ---
if (import.meta.url === `file://${process.argv[1]}`) {
  console.log(fairRations([2, 3, 4, 5, 6])); // "4"
  console.log(fairRations([1, 2]));          // "NO"
}
