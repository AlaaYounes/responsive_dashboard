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
              Flexible(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 60),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      decoration: const ShapeDecoration(
                        shape: OvalBorder(),
                        color: Color(0xffFAFAFA),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          itemModel.image,
                          colorFilter: const ColorFilter.mode(
                              Color(0xff4EB7F2), BlendMode.srcIn),
                        ),
                      ),
                    ),
                  ),
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
          const SizedBox(
            height: 34,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  itemModel.title,
                  style: AppStyles.styleSemiBold16(context),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'April 2022',
                  style: AppStyles.styleRegular14(context),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  r'$20,129',
                  style: AppStyles.styleSemiBold24(context),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
