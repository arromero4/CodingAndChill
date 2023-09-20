void main() {
  // In this we have defined the value of variable b.
  var b = "GeeksforGeeks";
  String a = b ?? 'Hello';
  print(a);

  // In this we have not defined the value of variable c.
  var c;
  String d = c ?? 'hello';
  print(d);
}
