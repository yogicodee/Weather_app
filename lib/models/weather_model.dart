class WeatherData {
  final String location;
  final String condition;
  final String iconAsset; // Assuming we use basic icons or emojis
  final int currentTemp;
  final int maxTemp;
  final int minTemp;
  final String dateString;
  
  final int windSpeed;
  final int humidity;
  final int rainChance;
  
  final List<HourlyForecast> hourly;
  final List<DailyForecast> daily;

  WeatherData({
    required this.location,
    required this.condition,
    required this.iconAsset,
    required this.currentTemp,
    required this.maxTemp,
    required this.minTemp,
    required this.dateString,
    required this.windSpeed,
    required this.humidity,
    required this.rainChance,
    required this.hourly,
    required this.daily,
  });
}

class HourlyForecast {
  final String time;
  final int temp;
  final String conditionIcon;

  HourlyForecast({required this.time, required this.temp, required this.conditionIcon});
}

class DailyForecast {
  final String day;
  final int minTemp;
  final int maxTemp;
  final String conditionIcon;
  final int rainChance;

  DailyForecast({
    required this.day,
    required this.minTemp,
    required this.maxTemp,
    required this.conditionIcon,
    required this.rainChance,
  });
}

// MOCK DATA
final WeatherData mockWeather = WeatherData(
  location: "Minsk",
  condition: "Thunderstorm",
  iconAsset: "⚡", // Using emojis for simplicity in this demo, but can be replaced with real assets
  currentTemp: 21,
  maxTemp: 24,
  minTemp: 18,
  dateString: "Monday, 17 May",
  windSpeed: 24,
  humidity: 78,
  rainChance: 65,
  hourly: [
    HourlyForecast(time: "Now", temp: 21, conditionIcon: "⚡"),
    HourlyForecast(time: "15:00", temp: 21, conditionIcon: "🌧️"),
    HourlyForecast(time: "16:00", temp: 20, conditionIcon: "☁️"),
    HourlyForecast(time: "17:00", temp: 19, conditionIcon: "☁️"),
    HourlyForecast(time: "18:00", temp: 18, conditionIcon: "🌧️"),
  ],
  daily: [
    DailyForecast(day: "Mon", minTemp: 14, maxTemp: 20, conditionIcon: "🌧️", rainChance: 70),
    DailyForecast(day: "Tue", minTemp: 15, maxTemp: 22, conditionIcon: "🌧️", rainChance: 60),
    DailyForecast(day: "Wed", minTemp: 12, maxTemp: 19, conditionIcon: "☁️", rainChance: 20),
    DailyForecast(day: "Thu", minTemp: 16, maxTemp: 25, conditionIcon: "☀️", rainChance: 0),
    DailyForecast(day: "Fri", minTemp: 18, maxTemp: 23, conditionIcon: "🌦️", rainChance: 40),
  ]
);
