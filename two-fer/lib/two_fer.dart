// import 'dart:io';

String twoFer([String? name]) {
  String answer;
  name != null
      ? answer = "One for $name, one for me."
      : answer = "One for you, one for me.";
  //String? name = stdin.readLineSync();
  // Replace the throw call and put your code here
  return answer;
}
