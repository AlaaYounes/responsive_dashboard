import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key, required this.color, required this.title, this.fontColor});

  final Color color;
  Color? fontColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
      ),
      alignment: Alignment.center,
      child: Text(
        title,
        style: AppStyles.styleSemiBold18(context)
            .copyWith(color: fontColor ?? Colors.white),
      ),
    );
  }
}
