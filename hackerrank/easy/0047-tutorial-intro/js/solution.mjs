// solution.mjs

export function introTutorial(V, arr) {
  let left = 0;
  let right = arr.length - 1;

  while (left <= right) {
    const mid = Math.floor((left + right) / 2);
    if (arr[mid] === V) return mid;
    if (arr[mid] < V) left = mid + 1;
    else right = mid - 1;
  }
  return -1;
}

// --- demo run ---
const arr = [1, 4, 5, 7, 9, 12];
console.log(introTutorial(4, arr));  // Expected: 1
console.log(introTutorial(9, arr));  // Expected: 4
console.log(introTutorial(12, arr)); // Expected: 5