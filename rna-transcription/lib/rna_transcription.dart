class RnaTranscription {
    Map <String, String>rnaMap = {"A": "U", "C": "G", "G": "C", "T": "A"};
    String toRna(String dna) { 
        String result = "";
        for (int i = 0; i < dna.length; i++) {
            if (!rnaMap.containsKey(dna[i])) {return dna;}
            result = result + (rnaMap[dna[i]] ?? "X");
        }
        return result;
    }
}
