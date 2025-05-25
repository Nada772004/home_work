/*
Temperature Converter
 Write a function that converts temperature from Celsius to Fahrenheit and vice versa.
 Accept temperature value and unit ('C' for Celsius, 'F' for Fahrenheit) as inputs.
 Convert accordingly and return the result
 */

import 'dart:io';

void main() {
  print("Enter temperature value:");
  double temp = double.parse(stdin.readLineSync()!);

  print("Enter unit ");
  String unit = stdin.readLineSync()!; 

  double? convertedTemp = convertTemperature(temp, unit);
  
  if (convertedTemp != null) {
    print("Converted Temperature: $convertedTemp ${unit == 'C' ? 'Fahrenheit' : 'Celsius'}");
  } else {
    print("Invalid unit");
  }
}

double? convertTemperature(double temp, String unit) {
  if (unit == 'C') {
    return (temp * 9 / 5) + 32; 
  } else if (unit == 'F') {
    return (temp - 32) * 5 / 9; 
  } else {
    return null; 
  }
}
