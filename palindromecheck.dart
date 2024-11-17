import 'dart:io';

void main() {

  String input = getInput('Enter a string:');

  checkPalindrome(input);
}

String getInput(String prompt) {
  print(prompt);
  return stdin.readLineSync()!;
}

void checkPalindrome(String str) {

  String normalized = str.toLowerCase().replaceAll(RegExp(r'\s+'), '');
  
  String reversed = normalized.split('').reversed.join('');

  if (normalized == reversed) {
    print('"$str" is a palindrome.');
  } else {
    print('"$str" is not a palindrome.');
  }
}
