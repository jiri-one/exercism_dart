class DifferenceOfSquares {
  int squareOfSum(int input) {
    List<int> inputList =
        List.generate(input + 1, (int index) => index).skip(1).toList();
    int sumOfList = inputList.reduce((value, element) => value + element);
    return sumOfList * sumOfList;
  }

  int sumOfSquares(int input) {
    List<int> inputList =
        List.generate(input + 1, (int index) => index).skip(1).toList();
    return inputList.reduce((value, element) => value + element * element);
  }

  int differenceOfSquares(int input) {
    return squareOfSum(input) - sumOfSquares(input);
  }
}
