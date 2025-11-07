// solution.mjs

export function queensAttack(n, k, r_q, c_q, obstacles) {
  // Direction slots: [up, down, right, left, up-right, up-left, down-right, down-left]
  const limits = [
    n - r_q,
    r_q - 1,
    n - c_q,
    c_q - 1,
    Math.min(n - r_q, n - c_q),
    Math.min(n - r_q, c_q - 1),
    Math.min(r_q - 1, n - c_q),
    Math.min(r_q - 1, c_q - 1),
  ];

  for (const [r_o, c_o] of obstacles) {
    if (r_o === r_q) {
      if (c_o < c_q) limits[3] = Math.min(limits[3], c_q - c_o - 1); // left
      else if (c_o > c_q) limits[2] = Math.min(limits[2], c_o - c_q - 1); // right
    } else if (c_o === c_q) {
      if (r_o < r_q) limits[1] = Math.min(limits[1], r_q - r_o - 1); // down
      else if (r_o > r_q) limits[0] = Math.min(limits[0], r_o - r_q - 1); // up
    } else if (Math.abs(r_o - r_q) === Math.abs(c_o - c_q)) {
      if (r_o > r_q && c_o > c_q) limits[4] = Math.min(limits[4], r_o - r_q - 1); // up-right
      else if (r_o > r_q && c_o < c_q) limits[5] = Math.min(limits[5], r_o - r_q - 1); // up-left
      else if (r_o < r_q && c_o > c_q) limits[6] = Math.min(limits[6], r_q - r_o - 1); // down-right
      else limits[7] = Math.min(limits[7], r_q - r_o - 1); // down-left
    }
  }

  return limits.reduce((a, b) => a + b, 0);
}

// --- demo runs ---
console.log(queensAttack(4, 0, 4, 4, []));                         // 9
console.log(queensAttack(5, 3, 4, 3, [[5,5],[4,2],[2,3]]));         // 10
console.log(queensAttack(1, 0, 1, 1, []));                           // 0