// solution.mjs

export function gridSearch(G, P) {
  const R = G.length;
  const r = P.length;
  if (R === 0 || r === 0) return "NO";

  const C = G[0].length;
  const c = P[0].length;
  if (r > R || c > C) return "NO";

  for (let row = 0; row <= R - r; row++) {
    const gridRow = G[row];
    let start = 0;

    // find all occurrences of P[0] in gridRow
    while (true) {
      const col = gridRow.indexOf(P[0], start);
      if (col === -1) break;

      let ok = true;
      for (let k = 1; k < r; k++) {
        const candidate = G[row + k].substr(col, c);
        if (candidate !== P[k]) {
          ok = false;
          break;
        }
      }

      if (ok) return "YES";

      // search next occurrence in the same row
      start = col + 1;
    }
  }

  return "NO";
}

// --- demo run ---
if (import.meta.url === `file://${process.argv[1]}`) {
  const G1 = [
    "7283455864",
    "6731158619",
    "8988242643",
    "3830589324",
    "2229505813",
    "5633845374",
    "6473530293",
    "7053106601",
    "0834282956",
    "4607924137",
  ];
  const P1 = ["9505", "3845", "3530"];
  console.log(gridSearch(G1, P1)); // YES

  const G2 = [
    "400453592126560",
    "114213133098692",
    "474386082879648",
    "522356951189169",
    "887109450487496",
    "252802633388782",
    "502771484966748",
    "075975207693780",
    "511799789562806",
    "404007454272504",
    "549043809916080",
    "962410809534811",
    "445893523733475",
    "768705303214174",
    "650629270887160",
  ];
  const P2 = ["99", "99"];
  console.log(gridSearch(G2, P2)); // NO
}
