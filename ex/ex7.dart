/*
Reverse a String
 Write a function that takes a string as input and returns the string reversed.
 Example:
 reverseString('hello') -> 'olleh'
 */

import 'dart:io';

void main() {
  print("Enter a string:");
  String input = stdin.readLineSync()!;

  String reversed = reverseString(input);
  print("Reversed string: $reversed");
}

String reverseString(String str) {
  return str.split('').reversed.join();
}
