class WordCount {
  Map<String, int> countWords(String input) {
    input = input
        .replaceAll("\n", " ")
        .replaceAll(",", " ")
        .replaceAll(RegExp(r"[:!&@\$%^&.]"), "");

    var splitedInput = input.split(" ");
    var countMap = <String, int>{};
    splitedInput.removeWhere((item) => item.isEmpty); // remove empty items
    splitedInput =
        splitedInput.map((item) => item.toLowerCase().trim()).toList();
    splitedInput = splitedInput
        .map((item) => item.replaceAll(RegExp(r"(\')$|^(\')"), ""))
        .toList();
    for (var word in splitedInput) {
      countMap[word] = (countMap[word] ?? 0) + 1;
    }
    return countMap;
  }
}
