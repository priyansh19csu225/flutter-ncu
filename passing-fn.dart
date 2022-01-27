import 'dart:io';

// import 'dart:core' ; // this is default
void main() {
  int n;
  stdout.write("Enter the Range");
  String? q = stdin.readLineSync();
  // if (q != null) {
  //   //n = int.parse(stdin.readLineSync().toString());
  //   n = int.parse(q.toString());
  //   //loop(n, 3);
  //   loop(
  //       n, cube); // Passing Function in a Function as an argument - CallBack Fn
  //   loop(n, square);
  //   loop(n, evenOdd);
  // }
}

//void loop(int n, int choice) {
void loop(int n, Function fn) {
  for (int i = 1; i <= n; i++) {
    print(fn(i));
    // if (choice == 1) {
    //   print(cube(i));
    // } else if (choice == 2) {
    //   print(square(i));
    // } else
    //   print(evenOdd(i));
  }
}

int cube(int num) {
  return num * num * num;
}

int square(int num) {
  return num * num;
}

String evenOdd(int num) {
  return num % 2 == 0 ? "Even $num" : "Odd $num";
}
