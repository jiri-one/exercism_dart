class Anagram {
    List<String> findAnagrams(String input, List<String> tryAnagrams) {
        input = input.toLowerCase();
        List<String> realyAnagrams = [];
        while (!tryAnagrams.isEmpty) {
            String testAnagram = tryAnagrams.removeAt(0);
            if (testAnagram.toLowerCase() == input) {continue;} // same word can't be anagram
            if ((input.split("")..sort()).join() == (testAnagram.toLowerCase().split("")..sort()).join()) {
                realyAnagrams.add(testAnagram);
            }
        }
        return realyAnagrams;
    }
}
