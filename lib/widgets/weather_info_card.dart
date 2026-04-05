import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class WeatherInfoCard extends StatelessWidget {
  final int windSpeed;
  final int humidity;
  final int rainChance;

  const WeatherInfoCard({
    Key? key,
    required this.windSpeed,
    required this.humidity,
    required this.rainChance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white.withOpacity(0.1)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildInfoItem(Icons.air, "$windSpeed km/h", "Wind"),
          _buildInfoItem(Icons.water_drop_outlined, "$humidity %", "Humidity"),
          _buildInfoItem(Icons.umbrella_outlined, "$rainChance %", "Chance of rain"),
        ],
      ),
    );
  }

  Widget _buildInfoItem(IconData icon, String value, String label) {
    return Column(
      children: [
        Icon(icon, color: AppColors.textWhite70, size: 28),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(
            color: AppColors.textWhite,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            color: AppColors.textWhite70,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
