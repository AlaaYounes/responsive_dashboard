import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/generated/assets.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  List<AllExpensesItemModel> items = [
    const AllExpensesItemModel(title: 'Balance', image: Assets.imagesBalance),
    const AllExpensesItemModel(title: 'Income', image: Assets.imagesIncome),
    const AllExpensesItemModel(title: 'Expenses', image: Assets.imagesExpenses),
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 12),
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          setState(() {
            if (activeIndex != index) {
              activeIndex = index;
              log('$activeIndex');
            }
          });
        },
        child: AllExpensesItem(
          itemModel: items[index],
          isActive: activeIndex == index,
        ),
      ),
      itemCount: items.length,
    );
  }
}
