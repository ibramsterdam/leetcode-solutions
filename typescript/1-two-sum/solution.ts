// Time: 196 ms (27.9%), Memory: 44.3 MB (90.94%)
function twoSum(nums: number[], target: number): number[] {
  for (let i = 0; i < nums.length; i++) {
    for (let k = 0; k < nums.length; k++) {
      if (nums[i] + nums[k] === target) {
        if (i !== k) {
          return [i, k];
        }
      }
    }
  }
  return [-1, -1];
}
