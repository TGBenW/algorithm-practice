// solution.mjs

export function permutationEquation(p) {
  const result = [];
  for (let x = 1; x <= p.length; x++) {
    const posOfX = p.indexOf(x) + 1;
    const y = p.indexOf(posOfX) + 1;
    result.push(y);
  }
  return result;
}

// --- demo run ---
console.log(permutationEquation([2, 3, 1]));       // [2, 3, 1]
console.log(permutationEquation([4, 3, 5, 1, 2])); // [1, 3, 5, 4, 2]