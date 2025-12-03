// solution.mjs

export function workbook(n, k, arr) {
  let page = 0;
  let specialCount = 0;

  for (let chapter = 0; chapter < n; chapter++) {
    const problems = arr[chapter];
    const startPage = page + 1;
    const totalPages = Math.floor((problems + k - 1) / k);
    page += totalPages;

    for (let p = 1; p <= problems; p++) {
      const pageNumber = startPage + Math.floor((p - 1) / k);
      if (p === pageNumber) {
        specialCount++;
      }
    }
  }

  return specialCount;
}

// --- demo run ---
if (import.meta.url === `file://${process.argv[1]}`) {
  const nSample = 5;
  const kSample = 3;
  const arrSample = [4, 2, 6, 1, 10]; // Expected: 4
  console.log(workbook(nSample, kSample, arrSample));
}
