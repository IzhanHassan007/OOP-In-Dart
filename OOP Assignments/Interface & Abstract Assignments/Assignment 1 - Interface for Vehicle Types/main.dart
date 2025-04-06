// Assignment 1: Interface for Vehicle Types

// Create an interface Vehicle that defines methods start(), stop(), and fuelEfficiency(). Then, create two classes: Car and Bike, which implement the Vehicle interface. Each class should define the methods with its own logic for starting, stopping, and calculating fuel efficiency.


// 04
void main() {
  Vehicle myCar = Car();
  Vehicle myBike = Bike();

  myCar.start();               // Output: Starting the car...
  myCar.stop();                // Output: Stopping the car...
  print("Car Fuel Efficiency: ${myCar.fuelEfficiency()} km/l");

  myBike.start();              // Output: Starting the bike...
  myBike.stop();               // Output: Stopping the bike...
  print("Bike Fuel Efficiency: ${myBike.fuelEfficiency()} km/l");
}

// 02
class Car implements Vehicle {
  @override
  void start() {
    print("Starting the car...");
  }

  @override
  void stop() {
    print("Stopping the car...");
  }

  @override
  double fuelEfficiency() {
    return 15.0; // Example: 15 km per liter
  }
}

// 03
class Bike implements Vehicle {
  @override
  void start() {
    print("Starting the bike...");
  }

  @override
  void stop() {
    print("Stopping the bike...");
  }

  @override
  double fuelEfficiency() {
    return 40.0; // Example: 40 km per liter
  }
}
// 01
abstract class Vehicle {
  void start();             // Method to start the vehicle
  void stop();              // Method to stop the vehicle
  double fuelEfficiency();  // Method to calculate fuel efficiency
}
