import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: true)),
          bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true)),
        ),
        borderData: FlBorderData(show: true),
        lineBarsData: [
          LineChartBarData(
            spots: [
              FlSpot(1, 3),
              FlSpot(2, 4.5),
              FlSpot(3, 3.8),
              FlSpot(4, 6.2),
              FlSpot(5, 5.5),
            ],
            isCurved: true,
            color: Colors.purple,
            belowBarData: BarAreaData(show: false),
          ),
        ],
      ),
    );
  }
}
