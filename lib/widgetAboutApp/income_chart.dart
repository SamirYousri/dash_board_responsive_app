import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _InComeChartState();
}

class _InComeChartState extends State<IncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getPieChartData(),
      ),
    );
  }

  PieChartData getPieChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        touchCallback: (p0, p1) {
          activeIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
        enabled: true,
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          showTitle: false,
          value: 40,
          color: const Color(0xFF044949),
          radius: activeIndex == 0 ? 60 : 50,
        ),
        PieChartSectionData(
          showTitle: false,
          value: 25,
          color: Colors.blue,
          radius: activeIndex == 1 ? 60 : 50,
        ),
        PieChartSectionData(
          showTitle: false,
          value: 20,
          color: const Color(0xFF064060),
          radius: activeIndex == 2 ? 60 : 50,
        ),
        PieChartSectionData(
          showTitle: false,
          value: 22,
          color: const Color(0xFFAAAAAA),
          radius: activeIndex == 3 ? 60 : 50,
        ),
      ],
    );
  }
}
