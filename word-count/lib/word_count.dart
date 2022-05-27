class WordCount {
  Map<String, int> countWords(String sentence) {
    RegExp exp = RegExp(r"[a-zA-Z]|'|\d|\s|\\");
    var clearedList =
        exp.allMatches(sentence).map((element) => element.group(0)).toList();
    var map = <String, int>{};
    for (var word in clearedList.join("").split(" ")) {
      word = word.trim().toLowerCase();
      int wordCount = map[word] ?? 0;
      if (wordCount == 0) {
        map[word] = 1;
      } else {
        wordCount++;
        map[word] = wordCount;
      }
    }
    return map;
  }
}

void main() {
  final wordCount = WordCount();
  wordCount.countWords("sentence a test\nzase;,'");
}
