import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key, required this.itemModel});

  final IncomeItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: itemModel.color),
      ),
      title: Text(
        itemModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        '${itemModel.percent}%',
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
