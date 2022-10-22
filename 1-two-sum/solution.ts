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