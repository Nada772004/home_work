// Question 17
//If you need a variable that can hold any type of value and may change during
 //execution, which data type would you use? Write a code example to show this


// The answer
 //use the dynamic data type.

 void main() {
  dynamic variable = "Hello, Dart!";  //string
  print(variable);

  variable = 42;           //int
  print(variable);

  variable = true;        //bool
  print(variable);

  variable = 3.14;        //double
  print(variable);

  
}
