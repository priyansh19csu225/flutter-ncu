void main() {
  var x;
  print(x);
  print(x.runtimeType);
  x = 1000;
  print(x);
  print(x.runtimeType);
  // Nullable
  int? a;
  //int a; // Non Nullable
  print(a);
  print(a.runtimeType);
  a = 100;
  print(a);
  print(a.runtimeType);
}
