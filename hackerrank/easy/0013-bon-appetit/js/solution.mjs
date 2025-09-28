// solution.mjs

export function bonAppetit(bill, k, b) {
  // Sum all except index k, split by 2, compare with b
  let sum = 0;
  for (let i = 0; i < bill.length; i++) {
    if (i !== k) sum += bill[i];
  }
  const anna = Math.floor(sum / 2);
  if (anna === b) {
    console.log("Bon Appetit");
  } else {
    console.log(b - anna);
  }
}

// --- demo run ---
bonAppetit([3, 10, 2, 9], 1, 12); // 5
bonAppetit([3, 10, 2, 9], 1, 7);  // Bon Appetit