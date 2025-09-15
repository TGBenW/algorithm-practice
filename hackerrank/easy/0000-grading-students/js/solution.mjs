// solution.mjs
export function gradingStudents(grades) {
  return grades.map(g => {
    if (g < 38) return g;
    const next = Math.floor(g / 5) * 5 + 5;
    const diff = next - g;
    return diff < 3 ? next : g;
  });
}

// --- demo run ---
if (import.meta.url === `file://${process.argv[1]}`) {
  const input = [73, 67, 38, 33];
  const result = gradingStudents(input);
  console.log(result); // [75, 67, 40, 33]
}
