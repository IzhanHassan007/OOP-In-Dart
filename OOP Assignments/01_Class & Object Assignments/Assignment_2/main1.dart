void main() {
  Student student1 = Student();
  Student student2 = Student();

  student1.name = "Izhan Hassan";
  student1.age = 24;
  student1.grade = "B+";
  student1.studentID = "BB-8913";
  student1.Semester = "2nd";

  student2.name = "Shariq Iqbal";
  student2.age = 23;
  student2.grade = "C";
  student2.studentID = "BB-8960";
  student2.Semester = "7th";

  
  student1.displayInfo();
  student1.updateGrade("A+");
  student1.updateAge(25);
  student1.updateSemester("3rd");

  
  student2.displayInfo();
  student2.updateGrade("A+");
  student2.updateAge(25);
  student2.updateSemester("3rd");
}

class Student {
  String? name;
  int? age;
  String? grade;
  var studentID;
  String? Semester;

  void displayInfo() {
    print("My Name is: $name");
    print("My Age is: $age");
    print("My Grade is: $grade");
    print("My Student ID is: $studentID");
    print("My Current Semester is: $Semester");

  }

// method to update grade
  void updateGrade(String newGrade) {
    grade = newGrade;
    print("Grade updated to $newGrade for $name");
  }

  void updateAge(int newAge){
    age = newAge;
    print("Age updated to $newAge for $name");
  }

  void updateSemester(String newSemester){
    Semester = newSemester;
    print("Semester updated to $newSemester for $name");
  }
}
