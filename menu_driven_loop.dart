import 'dart:io';

void main() {
  String continueChoice = 'Y';

  while (continueChoice.toUpperCase() == 'Y') {
    print('=================== MENU DRIVEN ===================');
    print('1. Add');
    print('2. Subtract');
    print('3. Multiply');
    stdout.write('Enter your choice (1-3): ');

    int choice = int.parse(stdin.readLineSync()!);

    // Input numbers for calculation
    stdout.write('Enter the first number: ');
    double num1 = double.parse(stdin.readLineSync()!);

    stdout.write('Enter the second number: ');
    double num2 = double.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print('Result: ${num1 + num2}');
        break;
      case 2:
        print('Result: ${num1 - num2}');
        break;
      case 3:
        print('Result: ${num1 * num2}');
        break;
      default:
        print('Invalid choice. Please enter 1, 2, or 3.');
    }

    // Ask the user if they want to continue
    stdout.write('Do you want to continue (Y/N)? ');
    continueChoice = stdin.readLineSync()!;
  }

  print('Thank you for using the program!');
}