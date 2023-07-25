# [219. Contains Duplicate II - **EASY**](https://leetcode.com/problems/contains-duplicate-ii/)

Given an integer `x`, return true if `x` is palindrome integer. An integer is a palindrome when it reads the same backward as forward.

- For example, `121` is a palindrome while `123` is not.

## Example

```bash
Input: x = 121
Output: true
Explanation: 121 reads as 121 from left to right and from right to left.
```

## Constraints

`-231 <= x <= 231 - 1`

## My solution

```bash
// Time: 192 ms (88.29%), Memory: 52.1 MB (30.76%)

function isPalindrome(x: number): boolean {
    if(x.toString().split("").reverse().join("") === x.toString()) return true;
    return false
};

```
