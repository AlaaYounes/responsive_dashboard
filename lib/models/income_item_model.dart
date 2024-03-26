import 'package:flutter/material.dart';

class IncomeItemModel {
  final String title;
  final double percent;
  final Color color;

  const IncomeItemModel(this.percent,
      {required this.title, required this.color});
}
