/*
7. Number Check Program:
 Create a program that asks the user to input a number and checks if it's positive, negative, or zero
 using if-else statements
 */

import 'dart:io';

void main() {
  int number;
  
    print("Enter a number");
    number = int.parse(stdin.readLineSync()!);
    if (number < 0) {
      print("number negative");
    } else if (number > 0) {
      print("positive");
    } else {
      print("Zero");
      
    }
  }

