void main(){
  simpleCalculator(10, 5, '+');
}

// 8. Simple calculator
void simpleCalculator(double num1, double num2, String operation) {
  switch (operation) {
    case '+':
      print("Result: ${num1 + num2}");
      break;
    case '-':
      print("Result: ${num1 - num2}");
      break;
    case '*':
      print("Result: ${num1 * num2}");
      break;
    case '/':
      if (num2 != 0) {
        print("Result: ${num1 / num2}");
      } else {
        print("Division by zero is not allowed.");
      }
      break;
    default:
      print("Invalid operation");
  }
}