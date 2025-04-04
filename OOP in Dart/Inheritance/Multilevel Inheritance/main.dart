// Multilevel Inheritance

void main(List<String> args) {
  CivicColor civicColor1 = CivicColor(
      CarName: "Civic", model: "Civic X", registrationYear: 2022, color: "red");
  civicColor1.display();
}

class Car {
  String? CarName;
  String? model;
  Car({required String? this.CarName, required String? this.model});
}

class Civic extends Car {
  int? registrationYear;
  Civic(
      {required String? super.CarName,
      required String? super.model,
      required int? this.registrationYear});
}

class CivicColor extends Civic {
  String? color;
  CivicColor(
      {required String? super.CarName,
      required String? super.model,
      required int? super.registrationYear,
      required String? this.color});
  display() {
    print("Car Name is: $CarName");
    print("Car model is: $model");
    print("Car registration year is: $registrationYear");
    print("Car color is: $color");
  }
}
