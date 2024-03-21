import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_button.dart';
import 'package:responsive_dashboard/widgets/custom_text_field.dart';

class CustomTextFieldListView extends StatelessWidget {
  const CustomTextFieldListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Customer name',
                hintText: 'Type customer name',
                border: 12,
                color: const Color(0xffFAFAFA),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                title: 'Customer Email',
                hintText: 'Type customer email',
                border: 12,
                color: const Color(0xffFAFAFA),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Item name',
                hintText: 'Type customer name',
                border: 12,
                color: const Color(0xffFAFAFA),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                title: 'Item mount',
                hintText: 'USD',
                border: 12,
                color: const Color(0xffFAFAFA),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                  color: Colors.white,
                  title: 'Add more details',
                  fontColor: const Color(0xff4EB7F2)),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomButton(
                  color: const Color(0xff4EB7F2), title: 'Send Money'),
            ),
          ],
        ),
      ],
    );
  }
}
