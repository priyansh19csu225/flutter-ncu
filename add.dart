void main(List<String> args) {
  //print("Args are $args");
  int sum = 0;
  for (int i = 0; i < args.length; i++) {
    sum = sum + int.parse(args[i]);
  }
  print("Sum is $sum");
}
