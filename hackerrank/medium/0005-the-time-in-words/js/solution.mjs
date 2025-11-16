// solution.mjs

const numbersInWords = {
  1: "one", 2: "two", 3: "three", 4: "four", 5: "five",
  6: "six", 7: "seven", 8: "eight", 9: "nine", 10: "ten",
  11: "eleven", 12: "twelve", 13: "thirteen", 14: "fourteen",
  15: "fifteen", 16: "sixteen", 17: "seventeen", 18: "eighteen",
  19: "nineteen", 20: "twenty", 21: "twenty one", 22: "twenty two",
  23: "twenty three", 24: "twenty four", 25: "twenty five",
  26: "twenty six", 27: "twenty seven", 28: "twenty eight",
  29: "twenty nine"
};

function hourWord(h) {
  const normalized = ((h - 1) % 12) + 1;
  return numbersInWords[normalized];
}

export function timeInWords(h, m) {
  switch (m) {
    case 0:
      return `${hourWord(h)} o' clock`;
    case 1:
      return `${numbersInWords[1]} minute past ${hourWord(h)}`;
    case 15:
      return `quarter past ${hourWord(h)}`;
    case 30:
      return `half past ${hourWord(h)}`;
    case 45:
      return `quarter to ${hourWord(h + 1)}`;
    case 59:
      return `${numbersInWords[1]} minute to ${hourWord(h + 1)}`;
    default:
      if (m < 30) {
        return `${numbersInWords[m]} minutes past ${hourWord(h)}`;
      } else {
        const remaining = 60 - m;
        return `${numbersInWords[remaining]} minutes to ${hourWord(h + 1)}`;
      }
  }
}

// --- demo run ---
if (import.meta.url === `file://${process.argv[1]}`) {
  console.log(timeInWords(5, 47)); // thirteen minutes to six
  console.log(timeInWords(3, 0));  // three o' clock
  console.log(timeInWords(7, 15)); // quarter past seven
  console.log(timeInWords(12, 59)); // one minute to one
}
