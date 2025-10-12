// solution.mjs

export function beautifulDays(i, j, k) {
  function reverseNumber(num) {
    return parseInt(num.toString().split('').reverse().join(''), 10);
  }

  let count = 0;
  for (let day = i; day <= j; day++) {
    if (Math.abs(day - reverseNumber(day)) % k === 0) {
      count++;
    }
  }
  return count;
}

// --- demo run ---
console.log(beautifulDays(20, 23, 6)); // 2
console.log(beautifulDays(10, 13, 3)); // 2