void main() {
  Person person = Person('John Doe', Gender.Female, AdminPanel.user);
  
  print(person.adminPanel.name);

  // Gender gender = Gender.Male;

  switch (person.gender) {
    case Gender.Male:
      print('Male');
      break;
    case Gender.Female: 
      print('Female');
      break;
    case Gender.Other:
      print('Other');
      break;
  }
}

enum Gender { Male, Female, Other }

enum Status { loading, error, success }

enum AdminPanel { user, admin }

class Person {
  String name;
  Gender gender;
  AdminPanel adminPanel;

  Person(this.name, this.gender, this.adminPanel);
}
