bool isValid(String isbn) {
    var isbnList = isbn.split("")
            .where((element) => element != "-")
            .map((e) => e == "X"? e = "10": e)
            .toList();
    List<num> finalList = [];
    if (isbnList.length < 10) {return false;}
    if (isbnList.contains("10") && isbnList.indexOf("10") != isbnList.length-1) {return false;}
    int i = isbnList.length;
    for (String element in isbnList) {
        if (!RegExp(r"\d+").hasMatch(element)) {return false;};
        finalList.add(int.parse(element) * i);
        i--;
    }
    var sum = finalList.reduce((num value, num element) => value + element);
    bool result = sum % (isbnList.length + 1) == 0;
    return result;
}
