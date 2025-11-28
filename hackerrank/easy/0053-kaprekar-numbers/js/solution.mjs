// solution.mjs

export function kaprekarNumbers(p, q) {
  const result = [];

  for (let n = p; n <= q; n++) {
    const d = String(n).length;

    const sq = BigInt(n) * BigInt(n);
    const sqStr = sq.toString();

    const rightLen = d;
    const rightPart = sqStr.slice(-rightLen); // last d chars
    const leftPart = sqStr.slice(0, sqStr.length - rightLen); // may be empty

    const rightVal = rightPart === "" ? 0n : BigInt(rightPart);
    const leftVal = leftPart === "" ? 0n : BigInt(leftPart);

    if (leftVal + rightVal === BigInt(n)) {
      result.push(n);
    }
  }

  if (result.length === 0) {
    return "INVALID RANGE";
  }
  return result.join(" ");
}

// --- demo run ---
if (import.meta.url === `file://${process.argv[1]}`) {
  console.log(kaprekarNumbers(1, 100)); // Expected: 1 9 45 55 99
}
