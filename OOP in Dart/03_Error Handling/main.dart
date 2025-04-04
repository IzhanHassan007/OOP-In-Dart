// void main() {
//   Area area = Area();
//   // area.length = 05;
//   area.breadth = 10;
//   area.calculateArea();
// }

// class Area {
//   double? length;
//   double? breadth;

//   // Method to calculate area
//   void calculateArea() {
//     print(length);
//     // IS TARAH KRNY SY HAMARA PROGRAM CRASH NH HOGA
//     try {
//       // first way:
//       if (length == null) {
//         print("Length is null");
//         length = 0;

//         // second way:
//         double templenght =
//             length ?? 0; // iska mtlb length null h to 0 assign krdega

//       }
//       double areaOfRec = templenght! * breadth!; // ! is null check operator
//       print("area : " + areaOfRec.toString());
//     } catch (e) {
//       print(e);
//     }
//   }
// }

void main() {
  Area area = Area();
  area.calculateArea(5, 5);
}
class Area {
  void calculateArea(double length, double breadth) {
    try {
      double areaOfRec = length * breadth;
      print("area : " + areaOfRec.toString());
    } catch (e) {
      print(e);
    }
  }
}
