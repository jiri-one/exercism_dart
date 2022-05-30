class Hamming {
    int distance (String dna1, String dna2) {
        if (dna1.length != dna2.length) {
            throw ArgumentError("left and right strands must be of equal length");
        }
        int counter = 0;
        for (int i = 0; i < dna1.length; i++) {
            if (dna1[i] != dna2[i]) {counter++;}
        }
        return counter;
    }
}
