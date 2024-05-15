import 'package:dash_board_responsive/widgetAboutApp/customAboutApp.dart';
import 'package:dash_board_responsive/widgetsExpensesAndQuickInvoice/CustomExpensesAndQuickInvoice.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              CustomExpensesAndQuickInvoice(),
              Padding(
                padding: EdgeInsets.only(
                  left: 16,
                ),
                child: CustomAboutApp(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
