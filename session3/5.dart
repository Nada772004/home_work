/*
 5. Class Creation and Dot Operator Usage:
 Create a class with a few properties and methods. Instantiate the class and use the dot operator to
 access and print its properties and methods.
 */

void main() {
  Car myCar = Car();
  myCar.make = "jeep";
  myCar.model = "BB";
  print(myCar.make);
  print(myCar.model);
}

class Car {
  String? make;
  String? model;
  
}