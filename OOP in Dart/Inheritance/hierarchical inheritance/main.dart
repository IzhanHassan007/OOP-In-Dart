// hierarchical inheritance

void main(List<String> args) {
  Student student1 = Student(name: "Ali", age: 12, id: 122);
  student1.display();
  print("x---------x----------x");
  Teacher Teacher1 = Teacher(name: "Muneeb", age: 20, teacherID: 1437);
  Teacher1.display();
}

class Person {
  String? name;
  int? age;
  Person({required String? this.name, required int? this.age});
}

class Student extends Person {
  int? id;
  Student(
      {required String? super.name, required int? super.age, required int? this.id});
  display() {
    print("Student name is: $name");
    print("Student age is: $age");
    print("Student id is: $id");
  }
}

class Teacher extends Person {
  int? teacherID;
  Teacher(
      {required super.name, required super.age, required int? this.teacherID});
  display() {
    print("Teacher name is: $name");
    print("Teacher age is: $age");
    print("Teacher id is: $teacherID");
  }
}
