import 'dart:io';

void main() {
  String? temp = stdin.readLineSync();
  List<String>? list = temp?.split(",");
  // if (temp != null) {
  //   List<String> list =temp.split(",");
  // }
  //String t = temp.toString();

  // String filter = "select * from photos";
  // filter = filter + " where loction = 'Delhi'";
  // filter = filter + " and size = '10mb'";
  const int MAX = 100;
  const int x = 10; // variable
  // x = 20; // Error
  final StringBuffer sb = StringBuffer();
  sb.write("select * from photos");
  sb.write(" where loction = 'Delhi'");
  sb.write(" and size = '10mb'");
  String z = sb.toString(); // convert stringbuffer into string
  print(sb);

  //Map<String, String> map = {};
  //sb = new StringBuffer();
  // sb.write("Hello");

  print(sb);
}
