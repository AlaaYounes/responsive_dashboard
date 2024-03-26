import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/my_card.dart';

class CardAndIncomeSections extends StatelessWidget {
  const CardAndIncomeSections({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MyCard(),
        SizedBox(
          height: 24,
        ),
        IncomeSection(),
      ],
    );
  }
}
