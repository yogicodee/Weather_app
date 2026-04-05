import 'package:flutter/material.dart';
import '../models/weather_model.dart';
import '../utils/app_colors.dart';

class HourlyForecastList extends StatelessWidget {
  final List<HourlyForecast> hourly;

  const HourlyForecastList({Key? key, required this.hourly}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
          child: Text(
            "Today",
            style: TextStyle(
              color: AppColors.textWhite,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: hourly.length,
            itemBuilder: (context, index) {
              final item = hourly[index];
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                decoration: BoxDecoration(
                  color: index == 0 ? AppColors.cardBackgroundLight : Colors.transparent,
                  borderRadius: BorderRadius.circular(24),
                  border: index == 0 ? Border.all(color: Colors.white.withOpacity(0.3)) : null,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      item.temp.toString() + '°',
                      style: const TextStyle(
                        color: AppColors.textWhite,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      item.conditionIcon,
                      style: const TextStyle(fontSize: 28),
                    ),
                    Text(
                      item.time,
                      style: const TextStyle(
                        color: AppColors.textWhite70,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
