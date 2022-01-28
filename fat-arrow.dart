void main() {
  //int result = add(1, 2);
  // Anonymous Function
  // Function add = (int x, int y) {
  //   return x + y;
  // };
  // var add = (int x, int y) {
  //   return x + y;
  // };
  //Function add = (int x, int y) => x + y; // Fat Arrow (Single Line of Code)
  //var add = (int x, int y) => x + y;
  final add = (int x, int y) => x + y;
  int result = add(10, 20);
  print(result);
}
// // Function Defination
// int add(int x, int y) {
//   return x + y;
// }
