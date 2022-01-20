import 'dart:io';

// import 'dart:core'; // default import
void main() {
  int a = 100;
  int b = 200;
  //int c = a + b;
  //print("sum is $c");
  print(a); // new line add during print
  print("Sum is ${a + b}");
  print("Sum is :::: " + (a + b).toString());
  stdout.writeln("Hi Dart"); // new line
  stdout.write("Hello Dart"); //same line print
}
