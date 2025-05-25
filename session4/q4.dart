/*
 4. Maps, Functions & User Input
 Create a Dart program that:- Declares a `Map<String, int>` where keys are fruit names and values are their
 prices.- Implements a function `getPrice(String fruitName)` that returns the price of a
 given fruit.- If the fruit is not found, return -1.
 Call the function inside `main()` and print the result.
 */

import 'dart:io';

void main() {
  Map<String, int> fruitPrices = {
    'Apple': 50,
    'Orange': 20,
    'Mango': 60,
    'Banana': 30,
  };

  print('Enter fruit name:');
  String fruitName = stdin.readLineSync()!;
  int price = getPrice(fruitName, fruitPrices);


  if (price == -1) {
    print(" $fruitName is not available.");
  } else {
    print("The price of $fruitName is ${price}.");
  }
}

int getPrice(String fruitName, Map<String, int> fruitPrices) {
  return fruitPrices[fruitName] ?? -1;
}
