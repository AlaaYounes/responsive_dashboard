// create a CustomBackgroundContainer class
import 'package:flutter/material.dart';

class CustomBackgroundContainer extends StatelessWidget {
  final Widget child;
  final double? padding;

  const CustomBackgroundContainer({
    super.key,
    required this.child,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(padding ?? 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: child);
  }
}
