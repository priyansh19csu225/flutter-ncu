void main() {
  Map<String, int> phones = {"amit": 2222, "ram": 3333};
  Map<String, List<int>> phoneMap = {
    "amit": [2222, 1111],
    "ram": [6666, 3333]
  };
  phones.putIfAbsent("ramesh", () => 7777);
  phones.putIfAbsent("amit", () => 1212);
  phones.remove("ramesh");
  String r = phones.containsKey("ram") ? "Key Present" : "Key Absent";
  r = phones.containsValue(2222) ? "Value Present" : "Not Present";
  phones.forEach((key, value) => print(" Key $key value $value"));
  //phones.clear();
  phones["ram"] = 66661;
  print(phones["ram"]);
  phones.length;
  print(phones);
}
