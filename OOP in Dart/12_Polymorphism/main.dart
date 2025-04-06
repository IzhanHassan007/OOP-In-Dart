// Polymorphism - It allows the object of different classes that are inheritant from parent classes...

void main() {
  // Dog dog = Dog(); // creating object of Dog class
  Animal mydog = Dog();
  Animal mycat = Cat();

  List <Animal> myList = [Dog(),  Cat()];

// Calling the sound method, will invoke the overridden method in Dog and Cat

  mydog.Sound();
  mycat.Sound();
}

// 01- Base Class
class Animal {
  void Sound() {
    print("Animal makes a Sound");
  }
}

// 02- Subclass Dog extends Animal
class Dog extends Animal {
  @override
  void Sound() {
    print("Dog Barks");
  }
}

// 03- Subclass Cat extends Animal
class Cat extends Animal {
  @override
  void Sound() {
    print("Cat Meows");
  }
}
