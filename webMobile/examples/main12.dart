void main() {
  String name = 'Marines';
  for (int character in name.codeUnits) {
    print(String.fromCharCode(character));
  }
}
