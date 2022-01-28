void main() {
  Set<int> set = {499, 555, 333, 1000, 20, 90, 100, 10, 90};
  var set2 = {10, 290, 90, 10}; // Type Inference
  set.add(1000);
  set.forEach((element) => print(element));
  Set<int> set3 = set.difference(set2);
  print(set3);
  set3 = set.intersection(set2);
  print(set3);
  // set
  //     .skipWhile((value) => value > 20)
  //     .forEach((element) => print("Skip while $element"));
  set
      .takeWhile((value) => value > 20)
      .forEach((element) => print("Take While $element"));
}
