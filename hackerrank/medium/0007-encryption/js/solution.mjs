// solution.mjs

export function encryption(s) {
  const work = s.replace(/ /g, "");
  const L = work.length;

  const root = Math.sqrt(L);
  let rows = Math.floor(root);
  let cols = Math.ceil(root);

  if (rows * cols < L) {
    rows += 1;
  }

  // Build grid rows
  const grid = [];
  for (let i = 0; i < L; i += cols) {
    grid.push(work.slice(i, i + cols));
  }

  const resultCols = [];

  for (let c = 0; c < cols; c++) {
    let colStr = "";
    for (let r = 0; r < grid.length; r++) {
      if (c < grid[r].length) {
        colStr += grid[r][c];
      }
    }
    resultCols.push(colStr);
  }

  return resultCols.join(" ");
}

// --- demo run ---
if (import.meta.url === `file://${process.argv[1]}`) {
  console.log(encryption("haveaniceday")); // hae and via ecy
  console.log(encryption("feedthedog"));   // fto ehg ee dd
  console.log(encryption("chillout"));     // clu hlt io
}
