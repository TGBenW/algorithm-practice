// solution.mjs

export function dayOfProgrammer(year) {
  if (year === 1918) return `26.09.${year}`;
  if (year < 1918) {
    return year % 4 === 0 ? `12.09.${year}` : `13.09.${year}`;
  }
  if (year % 400 === 0 || (year % 4 === 0 && year % 100 !== 0)) {
    return `12.09.${year}`;
  }
  return `13.09.${year}`;
}

// --- demo run ---
if (import.meta.url === `file://${process.argv[1]}`) {
  console.log(dayOfProgrammer(2017)); // 13.09.2017
}