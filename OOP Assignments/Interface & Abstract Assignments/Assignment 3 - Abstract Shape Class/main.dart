// Assignment 3: Abstract Shape Class
// Create an abstract class Shape with two abstract methods area() and perimeter(). Then, create two subclasses Rectangle and Circle that calculate their respective areas and perimeters. Write the logic inside the subclasses and demonstrate the calculation in the main function.

// 04- Main function to test area and perimeter calculations
void main() {
  Shape myRectangle = Rectangle(5.0, 3.0);  // Rectangle with length 5 and width 3
  Shape myCircle = Circle(4.0);             // Circle with radius 4

  print("Rectangle Area: ${myRectangle.area()}");       // Output: Rectangle Area: 15.0
  print("Rectangle Perimeter: ${myRectangle.perimeter()}");  // Output: Rectangle Perimeter: 16.0

  print("Circle Area: ${myCircle.area()}");             // Output: Circle Area: 50.24
  print("Circle Perimeter: ${myCircle.perimeter()}");   // Output: Circle Perimeter: 25.12
}

// 02- Create the Rectangle class that extends Shape and implements area() and perimeter() methods
class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  double area() {
    return length * width;  // Area = length * width
  }

  @override
  double perimeter() {
    return 2 * (length + width);  // Perimeter = 2 * (length + width)
  }
}

// 03- Create the Circle class that extends Shape and implements area() and perimeter() methods
class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;  // Area = π * radius^2
  }

  @override
  double perimeter() {
    return 2 * 3.14 * radius;  // Perimeter (circumference) = 2 * π * radius
  }
}

// 01- Define the abstract class Shape
abstract class Shape {
  double area();       // Abstract method to calculate area
  double perimeter();  // Abstract method to calculate perimeter
}