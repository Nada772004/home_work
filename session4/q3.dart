/*
 3. Lists, Loops & If Conditions
 Create a list of numbers. Iterate over the list and:- If a number is even, print "Even: <number>".- 
 If a number is odd, print "Odd: <number>
 */

import 'dart:io';

void main() {
  
  print("Enter the number:");
  int n = int.parse(stdin.readLineSync()!);

  List<int> numbers = []; 

  print("Enter $n numbers:");
  for (int i = 0; i < n; i++) {
    int number = int.parse(stdin.readLineSync()!);
    numbers.add(number);
  }
  
  for (int number in numbers) {
    if (number % 2 == 0) {
      print("Even: $number");
    } else {
      print("Odd: $number");
    }
  }
}

