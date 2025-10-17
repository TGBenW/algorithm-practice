// solution.mjs

export function extraLongFactorials(n) {
  let res = 1n;
  for (let i = 2n; i <= BigInt(n); i++) res *= i;
  console.log(res.toString());
}

// --- demo run ---
extraLongFactorials(10); // 3628800
extraLongFactorials(25); // 15511210043330985984000000