// solution.mjs

export function countApplesAndOranges(s, t, a, b, apples, oranges) {
  const applePos = apples.map(d => a + d);
  const orangePos = oranges.map(d => b + d);
  const applesOn = applePos.filter(x => x >= s && x <= t).length;
  const orangesOn = orangePos.filter(x => x >= s && x <= t).length;
  return [applesOn, orangesOn];
}

// --- demo run ---
const s = 7, t = 11, a = 5, b = 15;
const apples = [-2, 2, 1];
const oranges = [5, -6];
const [apCnt, orCnt] = countApplesAndOranges(s, t, a, b, apples, oranges);
console.log(apCnt); // 1
console.log(orCnt); // 1