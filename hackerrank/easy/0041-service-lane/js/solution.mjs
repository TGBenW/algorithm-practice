// solution.mjs

export function serviceLane(width, cases) {
  const result = [];
  for (const [start, end] of cases) {
    const minWidth = Math.min(...width.slice(start, end + 1));
    result.push(minWidth);
  }
  return result;
}

// --- demo runs ---
const width = [2, 3, 1, 2, 3, 2, 3, 3];
const casesArr = [
  [0, 3],
  [4, 6],
  [6, 7],
  [3, 5],
  [0, 7]
];
console.log(serviceLane(width, casesArr)); // [1, 2, 3, 2, 1]