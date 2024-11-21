abstract class Vehicle {
  void move(); // Abstract method
}

class Car extends Vehicle {
  @override
  void move() {
    print('Car is moving');
  }
}

void main() {
  var car = Car();
  car.move();
}