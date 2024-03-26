import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_item_model.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key, required this.items});

  final List<IncomeItemModel> items;

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (FlTouchEvent event, pieTouchResponse) {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          }),
      sectionsSpace: 0,
      sections: List.generate(
        widget.items.length,
        (index) {
          return PieChartSectionData(
            showTitle: false,
            color: widget.items[index].color,
            value: widget.items[index].percent,
            title: widget.items[index].title,
            radius: activeIndex == index ? 60 : 45,
          );
        },
      ),
    );
  }
}
