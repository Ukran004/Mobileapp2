import 'dart:io';

void main() {
  double principal = getInput('Enter principal: ');
  double rate = getInput('Enter rate of interest (as a percentage): ');
  double time = getInput('Enter time (in years): ');

  double interest = calculateSimpleInterest(principal, time, rate);

  print('Simple Interest = $interest');
}

double calculateSimpleInterest(double principal, double time, double rate) {
  return (principal * time * rate) / 100;
}

double getInput(String prompt) {
  print(prompt);
  return double.parse(stdin.readLineSync()!);
}
