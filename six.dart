void main() {
  String name = "Amit Srivastava"; // String Literal
  String name2 = 'Amit';
  int age = 21;
  String msg = 'Hello ' // Adajcent String
      'How'
      'are'
      'you';
  print(msg);
  // String multi = """ gdfgdiufygiu
  // hgdfjhgdfhgdfig
  // gdshjgjfhs
  // fsdfdsf""";
  // String multi = ''' jsdhgjk
  // ghdfjhgdkf
  // gdhjghd''';
  String multi = """ dhfgjkhfdgjkghjk Let's
  """;
  String z = "Hello " +
      "Xyz" +
      name +
      " Hi $name2" +
      " Age is " +
      age.toString() +
      " Age is $age";
  print(z[0]);
  print("ABCD".codeUnits);
  print("ABCD".codeUnitAt(0));
  print(multi.runtimeType);
  print(name is String);
  print(multi);
  // methods and properties
  print(name.startsWith("Amit"));
  print(name.endsWith("Srivastava"));
  print(name.contains("mit"));
  print(name.indexOf("mi"));
  print(name.substring(2, 5));
  print("A-111,Roop Nagar, Delhi-7".split(","));
  print(name.toUpperCase());
  print(name.toLowerCase());
  print("    Amit    Srivastava    ".trim());
  print("    Amit    Srivastava    ".trimLeft()); // trimRight
  print(name.padLeft(name.length + 40));

  // Property
  print(name.length);
  print(name.isEmpty);
  print(name.isNotEmpty);
}
