import 'dart:io';

void main() {

  double num1 = getInput("Enter number 1: ");
  double num2 = getInput("Enter number 2: ");
  String operator = getOperator();

  double? result = calculate(num1, num2, operator);

  if (result != null) {
    print('Result: $result');
  } else {
    print('Error! Invalid operation.');
  }
}

double getInput(String prompt) {
  print(prompt);
  return double.parse(stdin.readLineSync()!);
}

String getOperator() {
  print('Choose an operator (+, -, *, /):');
  return stdin.readLineSync()!;
}

double? calculate(double num1, double num2, String operator) {
  switch (operator) {
    case '+':
      return num1 + num2;
    case '-':
      return num1 - num2;
    case '*':
      return num1 * num2;
    case '/':
      return num2 != 0 ? num1 / num2 : null;
    default:
      print('Invalid operator.');
      return null;
  }
}
