import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/card_item.dart';

class MyCardsPageView extends StatelessWidget {
  MyCardsPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpandablePageView(
          controller: pageController,
          scrollDirection: Axis.horizontal,
          children: List.generate(
            3,
            (index) {
              return const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: CardItem(),
              );
            },
          ),
        ),
      ],
    );
  }
}
