bool isValid(String isbn) {
    var isbnList = isbn.split("").where((element) => element != "-").toList();
    List<num> finalList = []; 
    int i = isbnList.length;
    for (String element in isbnList) {
        finalList.add(int.parse(element) * i);
        i--;
    }
    var sum = finalList.reduce((num value, num element) => value + element);
    if (sum % (isbnList.length + 1) == 0) {
        return true;
    } else {
        return false;
    }
}
