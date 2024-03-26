import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/dots_indicator.dart';
import 'package:responsive_dashboard/widgets/my_cards_pageview.dart';
import 'package:responsive_dashboard/widgets/transaction_history.dart';

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My card',
            style: AppStyles.styleSemiBold20(context),
          ),
          const SizedBox(
            height: 20,
          ),
          MyCardsPageView(
            pageController: pageController,
          ),
          const SizedBox(
            height: 19,
          ),
          DotsIndicator(currentPageIndex: currentPageIndex),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Divider(
              height: 42,
              color: Color(0xffF1F1F1),
            ),
          ),
          const TransactionHistory(),
        ],
      ),
    );
  }
}
