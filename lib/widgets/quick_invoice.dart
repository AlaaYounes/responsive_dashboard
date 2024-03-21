import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/latest_transction.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_form.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24),
            child: LatestTransaction(),
          ),
          Divider(
            height: 48,
            color: Color(0xffF1F1F1),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24),
            child: CustomTextFieldListView(),
          ),
        ],
      ),
    );
  }
}
