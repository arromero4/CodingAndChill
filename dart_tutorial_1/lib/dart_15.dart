import 'dart:collection';

List<String> generateWords(String inputWord) {
  Set<String> validWords = HashSet<String>();

  void permute(String prefix, String remaining) {
    if (remaining.isEmpty) {
      validWords.add(prefix);
    } else {
      for (int i = 0; i < remaining.length; i++) {
        permute(prefix + remaining[i],
            remaining.substring(0, i) + remaining.substring(i + 1));
      }
    }
  }

  permute('', inputWord);

  return validWords.toList();
}

void main() {
  String word = "flutter";
  List<String> words = generateWords(word);
  print(words);
}
