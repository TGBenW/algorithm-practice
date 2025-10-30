// solution.mjs

export function cutTheSticks(arr) {
  if (!arr || arr.length === 0) return [];
  const a = [...arr].sort((x, y) => x - y);
  const res = [];
  let i = 0;
  while (i < a.length) {
    res.push(a.length - i);
    const cur = a[i];
    while (i < a.length && a[i] === cur) i++;
  }
  return res;
}

// --- demo runs ---
console.log(cutTheSticks([5,4,4,2,2,8]));       // [6, 4, 2, 1]
console.log(cutTheSticks([1,2,3,4,3,3,2,1]));   // [8, 6, 4, 1]