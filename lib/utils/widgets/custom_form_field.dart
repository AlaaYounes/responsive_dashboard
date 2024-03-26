import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomFormField extends StatelessWidget {
  var controller = TextEditingController();
  String hintText;
  String labelText;
  bool isPassword;
  TextInputType keyboardType;
  Widget? suffix;
  Widget? prefix;
  int? maxLines;
  String? Function(String?)? validator;
  Function(PointerDownEvent)? onTapOutside;
  Color backgroundColor;
  double? border;

  CustomFormField(
      {super.key,
      required this.controller,
      this.hintText = '',
      this.labelText = '',
      this.isPassword = false,
      this.keyboardType = TextInputType.text,
      this.suffix,
      this.prefix,
      this.maxLines = 1,
      this.validator,
      this.backgroundColor = Colors.white,
      this.onTapOutside,
      this.border});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: onTapOutside,
      validator: validator,
      maxLines: maxLines,
      controller: controller,
      obscureText: isPassword,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelStyle: AppStyles.styleMedium16(context),
        hintText: hintText,
        hintStyle: AppStyles.styleRegular16(context)
            .copyWith(color: Color(0xffAAAAAA)),
        fillColor: backgroundColor,
        filled: true,
        enabled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(border ?? 10),
          borderSide: BorderSide(color: backgroundColor),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(border ?? 10),
          borderSide: BorderSide(color: backgroundColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(border ?? 10),
          borderSide: BorderSide(color: backgroundColor),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(border ?? 10),
          borderSide: BorderSide(color: backgroundColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(border ?? 10),
          borderSide: BorderSide(color: backgroundColor),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(border ?? 10),
          borderSide: BorderSide(color: backgroundColor),
        ),
        suffixIcon: suffix,
        prefixIcon: prefix,
      ),
    );
  }
}
