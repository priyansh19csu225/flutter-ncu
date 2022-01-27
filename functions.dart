void main() {
  //int c = add(10, 20);
  //print(c);
  // Function addition = Math(); // addition is Local Variable
  // int result = addition(1, 2);
  // print("Result is $result");
  // List<Function> list = Math();
  // print(list[0](10, 20));
  // Function subtract = list[1];
  // print(subtract(1, 2));
  // Map<String, Function> map = Math(100);
  //print(map["add"](10, 20));
  // Function? fn = map["add"];
  // if (fn != null) {
  //   int result = fn(10, 20);
  // }
  Map<String, Function> map = Math(100);
  int result = map["add"]!(10, 20);
  print(result);
  result = map["sub"]!(1, 2);
  print(result);
}

Map<String, Function> Math(int c) {
  // Outer or Wrapper Fn
  int a = 10;
  // add is a Local Function
  Function add = (int x, int y) {
    // Anonymous Function
    return x + y + a + c;
  };
  Function sub = (int x, int y) {
    return x - y;
  };
  //return add; // Math is a Function which return add as a Function
  //return [add, sub]; // [] is a List
  return {"add": add, "sub": sub};
}

// Simple Way , Function Defination Style (Top Level)
// int add(int x, int y) { // Scope Library (Dart)
//   return x + y;
// }
// Function return Function
//List<Function> Math() {
  /*
Map<String, Function> Math() {
  // Outer or Wrapper Fn
  int a = 10;
  // add is a Local Function
  Function add = (int x, int y) {
    // Anonymous Function
    return x + y;
  };
  Function sub = (int x, int y) {
    return x - y;
  };
  //return add; // Math is a Function which return add as a Function
  //return [add, sub]; // [] is a List
  return {Constants.ADD_KEY: add, "sub": sub};
}*/

// class Constants {
//   static String ADD_KEY = "add";
//   static String SUB_KEY = "sub";
// }
