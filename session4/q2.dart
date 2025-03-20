/*
 2. Arithmetic Operators, Conditional Statements & Functions
 Write a function `calculateBonus(int salary, int yearsWorked)` that calculates a
 bonus based on the following rules:- If the employee has worked for 5 or more years, they get a 10% bonus.- Otherwise, they get a 5% bonus.
 The function should return the bonus amount.
 Then, call the function inside `main()` and print the result
 */

import 'dart:io';

void main() {
  print('Enter Salary:');
  int salary = int.parse(stdin.readLineSync()!);

  print('Enter Years Worked:');
  int yearsWorked = int.parse(stdin.readLineSync()!);

  double bonus = calculateBonus(salary, yearsWorked);
  print("Bonus: $bonus");
}

double calculateBonus(int salary, int yearsWorked) {
  double bonusPercentage;

  if (yearsWorked >= 5) {
    bonusPercentage = 0.10;
    print('10% Bonus');
  } else {
    bonusPercentage = 0.05;
    print('5% Bonus');
  }

  return salary * bonusPercentage;
}
