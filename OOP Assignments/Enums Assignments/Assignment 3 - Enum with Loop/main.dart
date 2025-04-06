// Assignment 3: Enum with Loop
// Create an enum Seasons with values (Spring, Summer, Autumn, Winter). Loop through the enum values and print each season with a short message (like “Spring brings flowers”).

void main(){
  for (var season in Seasons.values) {
    switch (season) {
      case Seasons.Spring:
        print('Spring brings flowers');
        break;

      case Seasons.Summer:
        print('Summer is hot');
        break;

      case Seasons.Autumn:
        print('Autumn is beautiful');
        break;
        
      case Seasons.Winter:
        print('Winter is cold');
        break;
    }
  }
}

enum Seasons{
  Spring,
  Summer,
  Autumn,
  Winter
}