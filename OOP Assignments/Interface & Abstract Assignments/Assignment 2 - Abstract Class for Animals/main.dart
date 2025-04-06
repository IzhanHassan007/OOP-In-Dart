// Assignment 2: Abstract Class for Animals
// Create an abstract class Animal with an abstract method sound(). Then, create two subclasses: Dog and Cat, each overriding the sound() method with its own implementation (e.g., Dog can bark, and Cat can meow). Implement a main function that creates objects of both classes and prints the sounds they make.

// 04- Main function to test the sounds
void main() {
  Animal myDog = Dog();
  Animal myCat = Cat();

  myDog.sound();  // Output: Bark
  myCat.sound();  // Output: Meow
}

// 02 Create the Dog class that extends Animal and overrides sound() method
class Dog extends Animal {
  @override
  void sound() {
    print("Bark");
  }
}

// 03- Create the Cat class that extends Animal and overrides sound() method
class Cat extends Animal {
  @override
  void sound() {
    print("Meow");
  }
}


// 01- Define the abstract class Animal
abstract class Animal {
  void sound(); // Abstract method to make sound
}