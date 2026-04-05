import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'utils/app_colors.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Weather App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Segoe UI', // fallback to standard san-serif
        primaryColor: AppColors.primaryBlue,
        scaffoldBackgroundColor: AppColors.backgroundStart,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: AppColors.textWhite),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
