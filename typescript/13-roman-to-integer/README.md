# [13. Roman to Integer - **EASY**](https://leetcode.com/problems/roman-to-integer/)

Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

- For example, `121` is a palindrome while `123` is not.

## Example

```bash
Symbol       Value
I             1
V             5
X             10
L             50
C             100
D             500
M             1000
```

For example, 2 is written as II in Roman numeral, just two ones added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.

Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:

I can be placed before V (5) and X (10) to make 4 and 9.
X can be placed before L (50) and C (100) to make 40 and 90.
C can be placed before D (500) and M (1000) to make 400 and 900.
Given a roman numeral, convert it to an integer.

## Example 1:

```bash
Input: s = "III"
Output: 3
Explanation: III = 3.
```

## Constraints

- 1 <= s.length <= 15
- s contains only the characters ('I', 'V', 'X', 'L', 'C', 'D', 'M').
- It is guaranteed that s is a valid roman numeral in the range [1, 3999].

## My solution

```bash
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

```
