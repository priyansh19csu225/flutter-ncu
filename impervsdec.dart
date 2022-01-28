void main() {
  List<int> prices = [10, 90, 66, 77, 20, 290]; // Without GST
  // GST / TAX - 18%
  // Prices with GST
  /*
  List<int> pricesWithGST = [];
  for (int i = 0; i < prices.length; i++) {
    int currentPrice = prices[i];
    int tax = (currentPrice * 0.18).toInt();
    int priceWithTax = currentPrice + tax;
    pricesWithGST.add(priceWithTax);
  }
  print("Org Price is $prices");
  print("Price with GST $pricesWithGST");*/
  // Map - Traverse the Org Array and Make a Copy of the Org Array based on the logic u have written
  // List<int> pricesWithGST = prices
  //     .map((int currentPrice) => currentPrice + (currentPrice * 0.18).toInt())
  //     .toList();
  List<int> pricesWithGST = prices.map((int currentPrice) {
    if (currentPrice > 50) {
      return currentPrice + (currentPrice * 0.50).toInt();
    } else {
      return currentPrice + (currentPrice * 0.10).toInt();
    }
  }).toList();
  print("Org Price is $prices");
  print("Price with GST $pricesWithGST");
}
