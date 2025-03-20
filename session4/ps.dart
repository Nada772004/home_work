/*Given an integer array nums, return true if any value appears at least twice in the array,
 and return false if every element is distinct.
*/


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

void main() {
  print(containsDuplicate([1, 2, 3, 1])); 
  print(containsDuplicate([1, 2, 3, 4])); 
  print(containsDuplicate([1, 1, 1, 3, 3, 4, 3, 2, 4, 2])); 
}
