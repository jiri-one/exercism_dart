class Bob {
    bool checkCapitals(String input) {
        input = input.replaceAll(RegExp("[^A-Za-z\d]"), ""); // get rid of punctuation and digits
        if (!input.contains(RegExp("[A-Za-z\d]"))) {return false;} // if string is almost empty (only questionmark for example)
        bool result = true;
        int i = 0;
        while (result == true && i < input.length) {
            result = RegExp("[A-Z]").hasMatch(input[i]) ? true : false;
            i++;
        }
        // another option with for cycle
        // for (int i = 0; i < input.length; i++) {
        //     if (RegExp("[A-Z]").hasMatch(input[i]) == true) {}
        //     else {
        //         return false;
        //     }
        // }
        return result;
    }

    String response(String input) {
        input = input.replaceAll(RegExp("[ \n\t\r\f]"), "");
        String answer = "";
        //print("vystup: ${input.length} a$input a");
        if (input.isEmpty) {answer = "Fine. Be that way!";}
        else if (checkCapitals(input) == true && input[input.length-1] == "?") {answer = "Calm down, I know what I'm doing!";}
        else if (input[input.length-1] == "?") {answer = "Sure.";}
        else if 
        ((checkCapitals(input) == true && input[input.length-1] == "!")
        || (checkCapitals(input)) == true) {answer = "Whoa, chill out!";}
        else {answer = "Whatever.";}
        return answer;
    }
}
