// Contructors - Constructor is a special method that is called when an object is created. It is used to initialize the object's state.
void main() {
  List<Student> studentList = [
    Student('Izhan', 24),
    Student('Anas', 23),
    Student('Fawad', 20),
  ];

// calling function
  studentList.forEach((element) {
    print('name ${element.name} age ${element.age}');
  });
}

// creating class
class Student {
  String? name;
  int? age;

  // creating constructor -- consider it a function -- passing value
  Student(String name, int age) {
    print('called');
    // agr hum chahty hen k upr sy value pass hoi wo inko bh assign hojaye to this. ka use kremgy
    this.name = name;
    this.age = age;
    // print("His Name is $name");
    // ye name diff h pehly waly sy - jb hum ismy constructor call krte h to humen line 1 m arrgument pass krna hoga
  }

  void display() {
    print('--------------------------------');
    print("My Name is: $name");
    print("My Age is: $age");
    print('--------------------------------');
  }
}
