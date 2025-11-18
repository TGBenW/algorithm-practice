// solution.mjs

export function acmTeam(topic) {
  const n = topic.length;
  if (n < 2) return [0, 0];
  const m = topic[0].length;

  let maxKnown = 0;
  let teamsCount = 0;

  for (let i = 0; i < n - 1; i++) {
    for (let j = i + 1; j < n; j++) {
      let knownForThisCombo = 0;

      for (let k = 0; k < m; k++) {
        if (topic[i][k] === "1" || topic[j][k] === "1") {
          knownForThisCombo++;
        }
      }

      if (knownForThisCombo > maxKnown) {
        maxKnown = knownForThisCombo;
        teamsCount = 1;
      } else if (knownForThisCombo === maxKnown) {
        teamsCount++;
      }
    }
  }

  return [maxKnown, teamsCount];
}

// --- demo run ---
if (import.meta.url === `file://${process.argv[1]}`) {
  const sampleTopics = [
    "10101",
    "11100",
    "11010",
    "00101",
  ];
  // Expected: [5, 2]
  console.log(acmTeam(sampleTopics));
}
