// Assignment 5: Enum with Index and Values
// Create an enum TrafficLight with values (Red, Yellow, Green). Each light should have a custom message and time duration (e.g., Red = "Stop", 30 seconds). Use a map or a method to show the message and duration based on the light.

void main(){
  trafficLight light = trafficLight.Red;
  TrafficLight traffic = TrafficLight("Stop", 30);
  print("Light: ${light.name}");
  print("Message: ${traffic.message}");
  print("Duration: ${traffic.duration} seconds");
}

class TrafficLight{
  String message;
  int duration;
  TrafficLight(this.message, this.duration);
}

enum trafficLight {Red, Yellow, Green}