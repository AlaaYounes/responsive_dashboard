import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/utils/widgets/custom_form_field.dart';

class TitleTextField extends StatelessWidget {
  TitleTextField({
    super.key,
    required this.title,
    required this.hintText,
    required this.border,
    required this.color,
  });

  final String title;
  final String hintText;
  final double border;
  final Color color;
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        CustomFormField(
          controller: controller,
          border: border,
          backgroundColor: color,
          hintText: hintText,
        ),
      ],
    );
  }
}
