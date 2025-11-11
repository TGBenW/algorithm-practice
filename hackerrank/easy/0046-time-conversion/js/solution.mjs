// solution.mjs

export function timeConversion(s) {
  const period = s.slice(-2);          // "AM" or "PM"
  const core = s.slice(0, -2);         // "hh:mm:ss"
  const [hhStr, mm, ss] = core.split(":");
  let hh = parseInt(hhStr, 10);

  if (period === "AM") {
    if (hh === 12) hh = 0;
  } else { // PM
    if (hh !== 12) hh += 12;
  }
  const hhOut = String(hh).padStart(2, "0");
  return `${hhOut}:${mm}:${ss}`;
}

// --- demo run ---
console.log(timeConversion("07:05:45PM")); // Expected: 19:05:45
console.log(timeConversion("12:01:00PM")); // Expected: 12:01:00
console.log(timeConversion("12:01:00AM")); // Expected: 00:01:00