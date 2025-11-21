// solution.mjs

export function organizingContainers(container) {
  const n = container.length;
  if (n === 0) return "Possible";

  const m = container[0].length;

  // Row sums: total balls per container
  const containerSums = container.map(row =>
    row.reduce((acc, v) => acc + v, 0)
  );

  // Column sums: total balls per type
  const typeSums = Array(m).fill(0);
  for (let i = 0; i < n; i++) {
    for (let j = 0; j < m; j++) {
      typeSums[j] += container[i][j];
    }
  }

  const sortedContainer = [...containerSums].sort((a, b) => a - b);
  const sortedTypes = [...typeSums].sort((a, b) => a - b);

  for (let i = 0; i < m; i++) {
    if (sortedContainer[i] !== sortedTypes[i]) {
      return "Impossible";
    }
  }
  return "Possible";
}

// --- demo run ---
if (import.meta.url === `file://${process.argv[1]}`) {
  const sample1 = [
    [1, 1],
    [1, 1],
  ];
  console.log(organizingContainers(sample1)); // Possible

  const sample2 = [
    [0, 2],
    [1, 1],
  ];
  console.log(organizingContainers(sample2)); // Impossible

  const sample3 = [
    [1, 3, 1],
    [2, 1, 2],
    [3, 3, 3],
  ];
  console.log(organizingContainers(sample3)); // Impossible

  const sample4 = [
    [0, 2, 1],
    [1, 1, 1],
    [2, 0, 0],
  ];
  console.log(organizingContainers(sample4)); // Possible
}
