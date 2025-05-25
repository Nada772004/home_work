/*
 Basic Arithmetic Calculator
 Write a function that takes two numbers and an operator (+, -, *, /) as input and returns the result.
 Handle cases where division by zero might occur
 */

import 'dart:io';

void main() {
  print("Enter first number:");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Enter second number:");
  double num2 = double.parse(stdin.readLineSync()!);

  print("Enter operator :");
  String operator = stdin.readLineSync()!;

  double? result = calculate(num1, num2, operator);
  if (result != null) {
    print("Result: $result");
  } else {
    print("Invalid operator!");
  }
}

double? calculate(double a, double b, String op) {
  switch (op) {
    case '+':
      return a + b;
    case '-':
      return a - b;
    case '*':
      return a * b;
    case '/':
      return (b != 0) ? a / b : double.nan; 
    default:
      return null; 
  }
}
