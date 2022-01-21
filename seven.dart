void main() {
  // String filter = "select * from photos";
  // filter = filter + " where loction = 'Delhi'";
  // filter = filter + " and size = '10mb'";
  StringBuffer sb = new StringBuffer();
  sb.write("select * from photos");
  sb.write(" where loction = 'Delhi'");
  sb.write(" and size = '10mb'");
  String z = sb.toString(); // convert stringbuffer into string
  print(sb);
  sb = new StringBuffer();
  sb.write("Hello");
  print(sb);
}
