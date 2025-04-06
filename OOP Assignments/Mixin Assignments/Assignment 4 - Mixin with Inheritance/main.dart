// Assignment 4: Mixin with Inheritance

// Create a base class Vehicle with a method start().
// Create a mixin Electric with a method charge() that prints "Charging battery..."
// Now create a class ElectricCar that extends Vehicle and uses Electric mixin.
// Test both methods with an object of ElectricCar. 

// 04
void main() {
  ElectricCar myCar = ElectricCar();
  myCar.start();   // Output: Starting vehicle...
  myCar.charge();  // Output: Charging battery...
}

// 03
class ElectricCar extends Vehicle with Electric {}

// 01
class Vehicle {
  void start() {
    print("Starting vehicle...");
  }
}

// 02
mixin Electric {
  void charge() {
    print("Charging battery...");
  }
}
