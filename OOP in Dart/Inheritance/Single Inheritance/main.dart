// Single Inheritance
void main(List<String> args) {
  Student student1 = Student(name: "Shakeeb", age: 12);
  student1.display();
}

class Person {
  String? name;
  int? age;
  Person({required String? this.name, required int? this.age});
}

class Student extends Person {
  int? id;
  Student(
      {required String? super.name, required int? super.age});
  display() {
    print("My name is: $name");
    print("My age is: $age");
  }
}
