import 'dart:io';

void main() {
  double temperature = getInput('Enter temperature value: ');
  String? inputUnit = getUnit('Enter the unit of the input value (C, F, or K): ');
  String? outputUnit = getUnit('Convert to (C, F, or K): ');

  double? convertedTemperature = convertTemperature(temperature, inputUnit!, outputUnit!);

  if (convertedTemperature != null) {
    print('Temperature in $outputUnit: $convertedTemperature');
  } else {
    print('Error! Invalid Conversion.');
  }
}

double getInput(String prompt) {
  while (true) {
    print(prompt);
    String? userInput = stdin.readLineSync();
    if (userInput != null) {
      try {
        return double.parse(userInput);
      } catch (e) {
        print("Invalid input. Please enter a valid number.");
      }
    } else {
      print("Input cannot be empty. Please try again.");
    }
  }
}

String? getUnit(String prompt) {
  print(prompt);
  while (true) {
    String? unitInput = stdin.readLineSync()?.toUpperCase();
    if (unitInput == "C" || unitInput == "F" || unitInput == "K") {
      return unitInput;
    } else {
      print("Invalid unit. Please choose from C, F, or K.");
    }
  }
}

double? convertTemperature(double temp, String inputUnit, String outputUnit) {
  double tempCelsius;

  switch (inputUnit) {
    case 'C':
      tempCelsius = temp;
      break;
    case 'F':
      tempCelsius = (temp - 32) * 5 / 9;
      break;
    case 'K':
      tempCelsius = temp - 273.15;
      break;
    default:
      return null;
  }

  switch (outputUnit) {
    case 'C':
      return tempCelsius;
    case 'F':
      return (tempCelsius * 9 / 5) + 32;
    case 'K':
      return tempCelsius + 273.15;
    default:
      return null;
  }
}
