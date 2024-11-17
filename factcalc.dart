import 'dart:io';

void main() {
  int num = getInput('Enter a positive integer: ').toInt();

  if (num > 0) {
    int result = calculateFactorial(num);
    print('Factorial of $num = $result');
  } else if (num == 0) {
    print('Factorial of $num = 1');
  } else {
    print('Error! Please enter a positive integer.');
  }
}

double getInput(String prompt) {
  print(prompt);
  return double.parse(stdin.readLineSync()!);
}

int calculateFactorial(int num) {
  int factorial = 1;
  for (int i = 1; i <= num; i++) {
    factorial *= i;
  }
  return factorial;
}
