/*
 5. Sets, Functions & Return Statement
 Write a function `uniqueNames(List<String> names)` that:- Accepts a list of names.-
  Returns a Set containing only unique names.
 Call the function inside `main()` and print the result.
 */

void main() {
  List<String> names = ["Ali", "Nada", "Seif", "Ali", "Wael", "Nada", "Ola"];
  Set<String> uniqueSet = uniqueNames(names);
  print("Unique names: $uniqueSet");
}


Set<String> uniqueNames(List<String> names) {
  return names.toSet(); 
}
