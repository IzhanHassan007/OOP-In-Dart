void main() {
  Person person = Person('a@b.com', '123456');
  person.display();
}
class Person with Logger, Validation {
  String email, password;
  Person(this.email, this.password);
  void display() {
    if (validatePassword(password) != null) {
      log(validatePassword(password).toString());
    }
    else{
    log("Email: $email, Password: $password");
    }
  }
}
mixin Logger {
  void log(String message) {
    print(message);
  }
}
mixin Validation {
  String? validatePassword(String value) {
    if (value.isEmpty) {
      return 'Password Cannot Be Empty';
    }
    if (value.length < 8) {
      return 'Password Length Should Be Atleast 8';
    }
    return null;    
  }
}
