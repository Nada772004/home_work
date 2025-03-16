/*
 4. Weather Report:
 Use Map and List to create a program that stores weather data for different cities (temperature,
 humidity, etc.). Write a function that can retrieve and print weather details using a city name
 */

import 'dart:io';

void main() {
  Map<String, Map<String, dynamic>> weatherData = {
    'Egypt': {'temperature': 30, 'humidity': 50},
    'London': {'temperature': 15, 'humidity': 80},
    'New York': {'temperature': 25, 'humidity': 60},
    'Paris': {'temperature': 20, 'humidity': 70},
  };

  print('\nEnter the city name:');
  String city = stdin.readLineSync()!;

  printWeatherReport(weatherData, city);
}

void printWeatherReport(
  Map<String, Map<String, dynamic>> weatherData,
  String city,
) {
  if (weatherData.containsKey(city)) {
    var data = weatherData[city];
    print('Weather report for $city:');
    print(data);
  } else {
    print(' no weather data available.');
  }
  print("Exit");
}
