void main() {
  int x;
  x = 10000000;
  int g = int.parse("1000"); // String to int convert

  int b2 = int.parse("9762", radix: 16);
  String z = x.toString();
  print(z);
  print(x.runtimeType);
  print(x.runtimeType.runtimeType);
  double r = 10.20;
  int b = r.toInt();
  double v = double.parse(
      "10.20"); // double 64 bit Floating Point Standard / IEEE-754 Standard
  print(r.isFinite);
  print(r.runtimeType);
  print(r.runtimeType.runtimeType);
  bool isAtt = true;
  String name = "Amit";
}
