import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_history_model.dart';
import 'package:responsive_dashboard/widgets/transaction_history_item.dart';

class TransHistoryListView extends StatelessWidget {
  const TransHistoryListView({super.key});

  static const List<TransactionHistoryModel> items = [
    TransactionHistoryModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022 ',
        amount: r'$20,129',
        isWithdrawal: true),
    TransactionHistoryModel(
        title: 'Landing Page project',
        date: '13 Apr, 2022 at 3:30 PM',
        amount: r'$2,000',
        isWithdrawal: false),
    TransactionHistoryModel(
        title: 'Juni Mobile App project',
        date: '13 Apr, 2022 at 3:30 PM',
        amount: r'$20,129',
        isWithdrawal: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(items.length, (index) {
        return Padding(
          padding: index == 1
              ? const EdgeInsets.symmetric(vertical: 12)
              : EdgeInsets.zero,
          child: TransactionHistoryItem(itemModel: items[index]),
        );
      }),
    );
  }
}
