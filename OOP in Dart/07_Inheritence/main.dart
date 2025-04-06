void main() {
  Student student = Student();
  student.name = "Izhan";
  student.age = 24;
  student.semester = "2nd";
  student.id = "BB-8913";
  student.displayUniInfo();
}

// Parent Class
class Person {
  String? name;
  int? age;

  void display() {
    print("My Name is: $name");
    print("My Age is: $age");
  }
}

// Child Class
class Student extends Person {
  String? semester;
  String? id;
  void displayUniInfo() {
    print("My Name is: $name");
    print("My Age is: $age");
    print("My Semester is: $semester");
    print("My ID is: $id");
  }
}
