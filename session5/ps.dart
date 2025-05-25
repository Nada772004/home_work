void main() {
  Solution solution1 = Solution();
  print(solution1.twoSum([2, 7, 11, 15], 9));
  print(solution1.twoSum([3, 2, 4], 6));
  print(solution1.twoSum([3, 3], 6));
}

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> numMap = {};
    for (int i = 0; i < nums.length; i++) {
      int number = target - nums[i];

      if (numMap.containsKey(number)) {
        return [numMap[number]!, i];
      }

      numMap[nums[i]] = i;
    }
    return [];
  }
}
