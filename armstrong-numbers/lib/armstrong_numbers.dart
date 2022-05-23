import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(int number) {
    List<String> numbersList = number.toString().split("");
    num toCheck = 0;
    numbersList.forEach((String element) {
      num powed = pow(int.parse(element), numbersList.length);
      toCheck += powed;
    });
    return number == toCheck;
  }
}

void main() {
  final armstrongNumbers = ArmstrongNumbers();
  print(armstrongNumbers.isArmstrongNumber(153)); // Have to be true
}
