import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartWidget extends StatelessWidget {
  const PieChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sections: [
          PieChartSectionData(value: 40, title: 'Doctors', color: Colors.blue),
          PieChartSectionData(
            value: 30,
            title: 'Businessmen',
            color: Colors.orange,
          ),
          PieChartSectionData(
            value: 30,
            title: 'Engineers',
            color: Colors.green,
          ),
        ],
        sectionsSpace: 2,
        centerSpaceRadius: 40,
      ),
    );
  }
}
