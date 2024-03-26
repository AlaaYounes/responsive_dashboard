import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_item_model.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/widgets/detailed_income_chart.dart';
import 'package:responsive_dashboard/widgets/income_chart.dart';
import 'package:responsive_dashboard/widgets/income_section_item.dart';

class IncomeChartSection extends StatelessWidget {
  const IncomeChartSection({super.key});

  static const items = [
    IncomeItemModel(
      40,
      title: 'Design service',
      color: Color(0xff208CC8),
    ),
    IncomeItemModel(
      25,
      title: 'Design product',
      color: Color(0xff4EB7F2),
    ),
    IncomeItemModel(
      20,
      title: 'Product royalti',
      color: Color(0xff064061),
    ),
    IncomeItemModel(
      22,
      title: 'Other',
      color: Color(0xffE2DECD),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width >= SizeConfig.desktop && width < 1450
        ? const Padding(
            padding: EdgeInsets.all(16),
            child: DetailedIncomeChart(items: items),
          )
        : Row(
            children: [
              const Expanded(
                child: IncomeChart(
                  items: items,
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: List.generate(items.length,
                      (index) => IncomeDetails(itemModel: items[index])),
                ),
              ),
            ],
          );
  }
}
