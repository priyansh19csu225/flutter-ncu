void main() {
  int result = add(y: 20, x: 10);
  print(result);
  print(add());
  print(add(y: 10));
  print(adder(second: 100, first: 200));
  print(adder(second: 100, first: 200, third: 10, fourth: 20));
}

// Optional Positional Param []
// int add([int x = 0, int y = 0]) {
//   return x + y;
// }
// Optional Named Param {}
int add({int x = 0, int y = 0}) {
  return x + y;
}

int adder(
    {required int first, required int second, int third = 0, int fourth = 0}) {
  return first + second + third + fourth;
}
