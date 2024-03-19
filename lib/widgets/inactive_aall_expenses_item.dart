import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({super.key, required this.itemModel});

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color(0xffF1F1F1),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: const Color(0xffFAFAFA),
                radius: 30,
                child: SvgPicture.asset(
                  itemModel.image,
                  color: const Color(0xff4EB7F2),
                ),
              ),
              const Expanded(
                child: SizedBox(
                  height: 56,
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                size: 24,
                color: Color(0xff064061),
              ),
            ],
          ),
          const Expanded(
            child: SizedBox(
              height: 34,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemModel.title,
                style: AppStyles.styleSemiBold16,
              ),
              Text(
                'April 2022',
                style: AppStyles.styleRegular14,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                '#20,129',
                style: AppStyles.styleSemiBold24,
              ),
            ],
          ),
        ],
      ),
    );
  }
}