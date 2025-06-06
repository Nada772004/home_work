/*
 8. Switch Case, Functions & Default Values
 Write a function `getDayType(String day)` that:- Uses a switch case to return "Weekend" if the day is "Saturday" or
  "Sunday".- Returns "Weekday" otherwise.- If the input is invalid, return "Invalid day".
 Call the function inside `main()` and print the result
 */

import 'dart:io';

void main() {
  print("Enter a day:");
  String day = stdin.readLineSync()!.trim(); 
  String result = getDayType(day);
  print("Day Type: $result");
}

String getDayType(String day) {
  switch (day) { 
    case "saturday":
    case "sunday":
      return "Weekend";
    case "monday":
    case "tuesday":
    case "wednesday":
    case "thursday":
    case "friday":
      return "Weekday";
    default:
      return "Invalid day"; 
  }
}
