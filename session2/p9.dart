/*
 Switch Case with Seasons
 Objective: Use switch for multiple cases.
 Instructions:-
  Create an integer variable month with a value between 1 and 12.-
   Use a switch statement to print the season based on the month
   */

import 'dart:io';
void main() {
  print('Enter the month number (1-12):');
  String input = stdin.readLineSync()!; 
  int month = int.parse(input); 

  switch (month) {
        case 12:
        case 1:
        case 2:
          print("It's Winter");
          break;
        case 3:
        case 4:
        case 5:
          print("It's Spring");
          break;
        case 6:
        case 7:
        case 8:
          print("It's Summer");
          break;
        case 9:
        case 10:
        case 11:
          print("It's Autumn");
          break;
        default:
          print('Invalid month ');
      }
}
