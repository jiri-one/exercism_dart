class WordCount {
    Map<String, int> countWords(String sentence) {
        sentence = sentence.replaceAll("\n", " ");
        sentence = sentence.replaceAll(",", " ");
        RegExp exp = RegExp(r"[^:!&@\$%^&.]");
        //RegExp exp = RegExp(r"[a-zA-Z]|'|\d|\s");
        final clearedList =
            exp.allMatches(sentence).map((element) => element.group(0)).toList();
        var map = <String, int>{};
        for (var word in clearedList.join("").split(" ")) {
        word = word.toLowerCase().trim();
        word = word.replaceAll(RegExp(r"(\')$|^(\')"), "");
        if (word.isNotEmpty) {
            int wordCount = map[word] ?? 0;
            if (wordCount == 0) {
            map[word] = 1;
            } else {
            wordCount++;
            map[word] = wordCount;
            }
        }
        }
        return map;
    }
}
