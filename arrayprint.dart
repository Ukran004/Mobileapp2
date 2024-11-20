import 'dart:io';

void main() {
  List<int> nums = [];

  for (int i = 0; i < 10; i++) {
    stdout.write('Enter num  ${i + 1}: ');  
    int? number = (int.parse(stdin.readLineSync()!));
    nums.add(number); 
  }
  print('The list of names is:');
  for (var number in nums) {
    print(number);
  }


  prinArr(nums);
}


void prinArr(List<int> arr){
  for (int i = 0; i < 10; i++) {
    print(arr[i]);
  }
}

void calculateEvenNumbers(List<int> arr) {
  print('The even numbers are:');
  for (int number in arr) {
    if (number % 2 == 0) {
      print(number);
    }
  }
}

void linearSearch(List<int>arr){
  
}



