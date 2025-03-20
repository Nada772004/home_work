/*Given an integer array nums, return true if any value appears at least twice in the array,
 and return false if every element is distinct.
*/


class Solution {
  bool containsDuplicate(List<int> nums) {
    Set<int> checked = {};
    for (int num in nums) {
      if (checked.contains(num)) {
        return true;
      }
      checked.add(num);
    }
    return false;
  }
}
