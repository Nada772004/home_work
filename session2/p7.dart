/*
 If-Else with Grades
 Objective: Practice conditional statements with integer values.
 Instructions:-
  Create an integer variable marks.-
   If marks is 70 or higher, print 'Passed', otherwise print 'Failed'.
   */
import 'dart:io';

void main() {
  print('Enter your marks');
  String input = stdin.readLineSync()!;
  int marks = int.parse(input);
  if (marks >= 70) {
    print('passed');
  } else {
    print('failed');
  }
}
