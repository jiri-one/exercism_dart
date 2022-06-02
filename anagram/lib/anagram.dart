import 'package:collection/collection.dart';

class Anagram {
    List<String> findAnagrams(String input, List<String> tryAnagrams) {
        input = input.toLowerCase();
        List<String> inputList = input.split("");
        inputList.sort();
        List<String> realyAnagrams = [];
        while (!tryAnagrams.isEmpty) {
            String testAnagram = tryAnagrams.removeAt(0);
            String testAnagramLowerCase = testAnagram.toLowerCase();
            if (testAnagramLowerCase == input) {continue;} // same word can't be anagram
            if (input.length == testAnagram.length) {
                int match = 0;
                for (int i = 0; i < input.length; i++) {
                    if (!input.contains(testAnagramLowerCase[i])) { break; }
                    else { match++; }
                }
                if (match == testAnagram.length) {
                    List<String> anagramList = testAnagramLowerCase.split("");
                    anagramList.sort();
                    Function eq = const ListEquality<String>().equals; // that's from collection
                    if (eq(anagramList, inputList) == true) { // it check if all letters in input are only once used in anagram, for example patter/tapper is bad
                        realyAnagrams.add(testAnagram);
                    }
                }
            }
        }
        return realyAnagrams;
    }
}
