import 'package:dash_board_responsive/widgetAboutApp/customAboutApp.dart';
import 'package:dash_board_responsive/widgets_Drawer/custom_drawer.dart';
import 'package:dash_board_responsive/widgetsExpensesAndQuickInvoice/CustomExpensesAndQuickInvoice.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        Expanded(
          flex: 3,
          child: CustomExpensesAndQuickInvoice(),
        ),
        Expanded(
          flex: 2,
          child: CustomAboutApp(),
        ),
      ],
    );
  }
}
