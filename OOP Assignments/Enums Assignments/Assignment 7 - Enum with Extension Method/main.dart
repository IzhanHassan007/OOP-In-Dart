// Assignment 7: Enum with Extension Method

// Create an enum Weather (Sunny, Rainy, Cloudy). Use an extension on the enum to return a suggestion like:

// Sunny: Wear sunglasses
// Rainy: Take umbrella
// Cloudy: May rain, stay alert

void main() {
  for (var w in Weather.values) {
    print('${w.name}: ${w.suggestion}');
  }
}

extension WeatherSuggestion on Weather {
  String get suggestion {
    switch (this) {
      case Weather.Sunny:
        return 'Wear sunglasses 😎';

      case Weather.Rainy:
        return 'Take umbrella ☔';

      case Weather.Cloudy:
        return 'May rain, stay alert ☁️';
    }
  }
}

enum Weather { Sunny, Rainy, Cloudy }
