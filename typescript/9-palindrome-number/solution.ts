// Time: 192 ms (88.29%), Memory: 52.1 MB (30.76%)
function isPalindrome(x: number): boolean {
  if (x.toString().split("").reverse().join("") === x.toString()) return true;
  return false;
}
