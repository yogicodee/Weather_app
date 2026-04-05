import 'package:flutter/material.dart';
import '../models/weather_model.dart';
import '../utils/app_colors.dart';
import '../widgets/weather_info_card.dart';
import '../widgets/hourly_forecast.dart';
import '../widgets/daily_forecast.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.backgroundStart,
              AppColors.backgroundEnd,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Custom AppBar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.grid_view_rounded, color: AppColors.textWhite),
                    Row(
                      children: [
                        const Icon(Icons.location_on, color: AppColors.textWhite, size: 20),
                        const SizedBox(width: 8),
                        Text(
                          mockWeather.location,
                          style: const TextStyle(
                            color: AppColors.textWhite,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const Icon(Icons.more_vert, color: AppColors.textWhite),
                  ],
                ),
              ),

              // Main content scrollable
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      // Large Icon
                      Padding(
                        padding: const EdgeInsets.only(top: 24.0, bottom: 8.0),
                        child: Text(
                          mockWeather.iconAsset,
                          style: const TextStyle(fontSize: 100),
                        ),
                      ),
                      
                      // Temperature
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${mockWeather.currentTemp}",
                            style: const TextStyle(
                              color: AppColors.textWhite,
                              fontSize: 96,
                              fontWeight: FontWeight.bold,
                              height: 1.0,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                              "°",
                              style: TextStyle(
                                color: AppColors.textWhite,
                                fontSize: 48,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                      
                      // Condition
                      Text(
                        mockWeather.condition,
                        style: const TextStyle(
                          color: AppColors.textWhite,
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 8),
                      
                      // Date
                      Text(
                        mockWeather.dateString,
                        style: const TextStyle(
                          color: AppColors.textWhite70,
                          fontSize: 16,
                        ),
                      ),
                      
                      const SizedBox(height: 16),
                      // Divider line
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 48.0),
                        child: Divider(color: Colors.white.withOpacity(0.2)),
                      ),
                      
                      // Info Card (Wind, Humidity, Rain)
                      WeatherInfoCard(
                        windSpeed: mockWeather.windSpeed,
                        humidity: mockWeather.humidity,
                        rainChance: mockWeather.rainChance,
                      ),
                      
                      // Hourly Forecast
                      HourlyForecastList(hourly: mockWeather.hourly),
                      
                      const SizedBox(height: 16),
                      
                      // Daily Forecast
                      DailyForecastList(daily: mockWeather.daily),
                      
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
