/*
 6. Null Safety, Encapsulation & Classes
Create a class `Person` with the following attributes:- `String name`- `int? age` (nullable)- `bool isStudent` (default is false)
 Implement:- A constructor that initializes `name` and `age`.- A method `displayInfo()` that prints the person's details.
 In `main()`, create an instance of `Person` and call `displayInfo()`
 */
import 'person6.dart';
void main() {
  Person person1 = Person("Nada", age: 20, isStudent: true);
  person1.displayInfo();

  print("\n");

  Person person2 = Person("Menna");
  person2.displayInfo();
}

