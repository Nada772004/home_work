/*
1. Basic Calculator:
 Create a Dart program that takes two numbers as input and performs addition, subtraction,
 multiplication, and division using variables, arithmetic operators, and functions. Also, include
 optional parameters for different operations (e.g., addition of multiple numbers).
 */
import 'dart:io';

void main() {
  print("Enter first number:");
  double number1 = double.parse(stdin.readLineSync()!);
  print("Enter second number:");
  double number2 = double.parse(stdin.readLineSync()!);
  print("Addition ${add(number1, number2)}");
  print("Subtraction${sub(number1, number2)}");
  print("Multiplication${multi(number1, number2)}");
  print("division ${div(number1, number2)}");
}

double add(double number1, [double number2 = 0]) {
  double addition = number1 + number2;
  return addition;
}

double sub(double number1, [double number2 = 0]) {
  double subtraction = number1 - number2;
  return subtraction;
}

double multi(double number1, [double number2 = 0]) {
  double multiplication = number1 * number2;
  return multiplication;
}

double div(double number1, [double number2 = 0]) {
  if (number2 == 0) {
    print("Error");
  }
  double division = number1 / number2;
  return division;
}
