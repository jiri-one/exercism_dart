class Raindrops {
    String convert(int input) {
        String result = "";
        if (input % 3 == 0) {result = result + "Pling";}
        if (input % 5 == 0) {result = result + "Plang";}
        if (input % 7 == 0) {result = result + "Plong";}
        if (result.length == 0) {result = result + "$input";}
        return result;
    }
}
