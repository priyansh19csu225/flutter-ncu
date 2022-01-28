void main() {
  List<int> prices = [100, 200, 300, 40, 90, 10];
  prices.add(888); // at end
  prices.insert(1, 777); // index wise add
  // prices.remove(10);
  // prices.removeAt(1);
  // prices.removeLast();
  // prices.removeRange(2, 4);
  //prices.removeWhere((int price) => price >= 100);
  prices[0] = 888;
  print(prices[0]);
  print(prices.elementAt(0));
  //prices.clear();
  prices.forEach((int price) => print("Price is $price"));
  //print(prices.contains(200) ? "Found " : "not found");
  List<int> subList = prices.sublist(2, 5); // 5-1
  //print(subList);
  Iterable<int> itr = prices.skip(3);
  itr.forEach((int price) => print(price));
  // Iterator i = itr.iterator;
  // while (i.moveNext()) {
  //   print("Itr ${i.current}"); // current and then move to the next element
  // }
  //print(prices);
  String res = prices.join("=>");
  print(res);
  prices.map((int price) => price * price).forEach((int price) => print(price));
  print("Org Price is $prices");
  int total = prices.fold(0, (sum, int currentPrice) => sum + currentPrice);
  print("Total $total");
  print("Before Sort Price is $prices");
  //prices.sort((int first, int second) => first.compareTo(second));
  // prices.sort((int first, int second) => first - second);
  prices.sort((int first, int second) => second - first);
  print("After Sort $prices");
  List<String> names = ["ram", "amit", "ajay"];
  print("Before Sort Named are $names");
  //names.sort((String a, String b) => a.compareTo(b));
  names.sort((String a, String b) => b.compareTo(a));
  print("Sorted Named are $names");
  prices = prices.reversed.toList();
  // Price Search
  //prices.where((int price) => price > 50).forEach((element) => print(element));
  print("List is $prices");
  //int index = prices.firstWhere((price) => price > 5000);
  //print(index);
  bool result = prices.every((element) => element >= 10);
  print(result);
  result = prices.any((element) => element >= 100);
  print(result);

  // Property
  print(prices.length);
  print(prices.isEmpty);
  print(prices.reversed);
  print(prices.first);
  print(prices.last);
  // prices.fold(0, (int previousValue, int element) {
  //   print("Prev $previousValue and Element $element");
  //   return previousValue + element;
  //   // return null;
  // });
}
