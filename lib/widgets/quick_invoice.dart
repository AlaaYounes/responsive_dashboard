import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/latest_transction.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 24,
      child: Column(
        children: [
          const QuickInvoiceHeader(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: LatestTransaction(),
          ),
        ],
      ),
    );
  }
}
