class Anagram {
    List<String> findAnagrams(String input, List<String> tryAnagrams) {
        input = input.toLowerCase();
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
                    realyAnagrams.add(testAnagram);
                }
            }
        }
        return realyAnagrams;
    }
}
