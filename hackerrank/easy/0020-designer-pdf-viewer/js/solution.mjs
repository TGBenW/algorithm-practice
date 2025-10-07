// solution.mjs

export function designerPdfViewer(h, word) {
  let top = 0;
  for (const ch of word) {
    const idx = ch.charCodeAt(0) - 97; // 'a' -> 97
    if (h[idx] > top) top = h[idx];
  }
  return top * word.length;
}

// --- demo run ---
const h0 = [1,3,1,3,1,4,1,3,2,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5];
console.log(designerPdfViewer(h0, "abc"));   // 9

const h1 = [1,3,1,3,1,4,1,3,2,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,7];
console.log(designerPdfViewer(h1, "zaba"));  // 28