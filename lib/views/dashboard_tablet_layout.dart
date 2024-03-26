import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/views/dashboard_mobile_layout.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.all(24),
            child: DashboardMobileLayout(),
          ),
        ),
      ],
    );
  }
}
