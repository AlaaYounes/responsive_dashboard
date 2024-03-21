import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick invoice',
          style: AppStyles.styleSemiBold20,
        ),
        const Expanded(child: SizedBox()),
        Container(
          width: 48,
          height: 48,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: Color(0xffFAFAFA)),
          child: const Icon(
            Icons.add,
            size: 32,
            color: Color(0xff4EB7F2),
          ),
        ),
      ],
    );
  }
}
