import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key, required this.items});

  final List<IncomeItemModel> items;

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
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
            titlePositionPercentageOffset: activeIndex == index ? -1.2 : null,
            titleStyle: AppStyles.styleMedium16(context)
                .copyWith(color: activeIndex == index ? null : Colors.white),
            color: widget.items[index].color,
            value: widget.items[index].percent,
            title: activeIndex == index
                ? widget.items[index].title
                : '${widget.items[index].percent}%',
            radius: activeIndex == index ? 60 : 50,
          );
        },
      ),
    );
  }
}
