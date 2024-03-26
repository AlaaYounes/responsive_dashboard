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
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (activeIndex != 0) {
                  activeIndex = 0;
                  log('$activeIndex');
                }
              });
            },
            child: AllExpensesItem(
                itemModel: items[0], isActive: activeIndex == 0),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (activeIndex != 1) {
                  activeIndex = 1;
                  log('$activeIndex');
                }
              });
            },
            child: AllExpensesItem(
                itemModel: items[1], isActive: activeIndex == 1),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (activeIndex != 2) {
                  activeIndex = 2;
                  log('$activeIndex');
                }
              });
            },
            child: AllExpensesItem(
                itemModel: items[2], isActive: activeIndex == 2),
          ),
        )
      ],
    );
    return Row(
        children: items.asMap().entries.map((e) {
      int index = e.key;
      var item = e.value;
      return Expanded(
        child: GestureDetector(
          onTap: () {
            setState(() {
              if (activeIndex != index) {
                activeIndex = index;
                log('$activeIndex');
              }
            });
          },
          child: Padding(
            padding: index == 1
                ? const EdgeInsets.symmetric(horizontal: 12)
                : EdgeInsets.zero,
            child: AllExpensesItem(
                itemModel: item, isActive: activeIndex == index),
          ),
        ),
      );
    }).toList());
  }
}
