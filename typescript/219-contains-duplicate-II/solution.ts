// Time: 100 ms (98.85%), Memory: 63.6 MB (41.98%)
function containsNearbyDuplicate(nums: number[], k: number): boolean {
  const map = new Map();
  for (let i = 0; i < nums.length; i++) {
    if (i - map.get(nums[i]) <= k) {
      return true;
    }
    map.set(nums[i], i);
  }
  return false;
}
