void main() {
  var solution = Solution();

  print(solution.isPalindrome("A man, a plan, a canal: Panama")); 
  print(solution.isPalindrome("race a car"));                      
  print(solution.isPalindrome(" "));                              
}
class Solution {
  bool isPalindrome(String s) {
    String cleaned = s
        .toLowerCase()
        .split('')
        .where((char) => RegExp(r'[a-z0-9]').hasMatch(char))
        .join();

    String reversed = cleaned.split('').reversed.join();
    return cleaned == reversed;
  }
}
