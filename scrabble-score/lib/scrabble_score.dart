List one_point = <String>["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"];
List two_points = <String>["D", "G"];
List three_points = <String>["B", "C", "M", "P"];
List four_points = <String>['F', 'H', 'V', 'W', 'Y'];
List five_points = <String>['K'];
List eight_points = <String>['J', 'X'];
List ten_points = <String>['Q', 'Z'];

int score(String letters) {
    letters = letters.toUpperCase();
    int points = 0;
    // for (int i = 0; i < letters.length; i++) {
    //     ....letters[i]
    // }
    letters.split("").forEach((char) {
        if (one_point.contains(char)) {
            points++;
        } else if (two_points.contains(char)) {
            points += 2;
        } else if (three_points.contains(char)) {
            points += 3;
        } else if (four_points.contains(char)) {
            points += 4;
        } else if (five_points.contains(char)) {
            points += 5;
        } else if (eight_points.contains(char)) {
            points += 8;
        } else if (ten_points.contains(char)) {
            points += 10;
        }
    });
    return points;
}

void main() {
    score("letters");
}
