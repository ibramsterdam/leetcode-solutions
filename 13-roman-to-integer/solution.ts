// Time: 152 ms (85.91), Memory: 48.6  MB (49.41%)
function romanToInt(s: string): number {
  let number: number = 0;
  let map = {
    I: 1,
    V: 5,
    X: 10,
    L: 50,
    C: 100,
    D: 500,
    M: 1000,
  };

  for (let i = 0; i < s.length; i++) {
    // if number combination is one of six instances where subtraction is used
    if (
      (s[i] === "I" || s[i] === "X" || s[i] === "C") &&
      map[s[i + 1]] > map[s[i]]
    ) {
      number = number + (map[s[i + 1]] - map[s[i]]);
      i++;
      continue;
    }

    number = number + map[s[i]];
  }

  return number;
}
