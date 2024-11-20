import 'dart:io';

void main(){
  Map cityCountry = <String, String>{};

  cityCountry['New York'] = 'USA';
  cityCountry['London'] = 'UK';
  cityCountry['Paris'] = 'France';

  cityCountry.forEach((city, country){
    print('$city is in $country');
  });

  print("Enter a city name:");
  String city = stdin.readLineSync()!;

  if (cityCountry.containsKey(city)) {
    print('$city is in ${cityCountry[city]}');
  } else {
    print("City not found in the map.");
  }
}