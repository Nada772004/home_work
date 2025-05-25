/*
 8. Range Checker Program:
 Write a Dart program that checks if a number is within a specified range using logical operators and
 prints the result
 */

import 'dart:io';

void main() {
  int minRange = 10;
  int maxRange = 100;

  print("Enter a number  ($minRange - $maxRange):");

  String input = stdin.readLineSync()!;

  int number = int.parse(input);

  if (number >= minRange && number <= maxRange) {
    print(" The number $number is within the range.");
  } else if (number >= maxRange || number <= minRange) {
    print(" The number $number is outside the range .");
  } else {
    print("Invalid number. ");
  }
}
