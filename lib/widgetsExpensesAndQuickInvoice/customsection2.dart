import 'package:dash_board_responsive/widgetsExpensesAndQuickInvoice/custom_scrol_horizontal.dart';
import 'package:dash_board_responsive/widgetsExpensesAndQuickInvoice/quick_invoice_header.dart';
import 'package:dash_board_responsive/widgetsExpensesAndQuickInvoice/section2.2.dart';
import 'package:flutter/material.dart';

class CustomSection2 extends StatelessWidget {
  const CustomSection2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 0,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            QuickInvoiceHeader(),
            SizedBox(
              height: 10,
            ),
            CustomScrolHorizontal(),
            Divider(
              height: 48,
              color: Color.fromARGB(255, 231, 231, 231),
            ),
            Section2_2(),
          ],
        ),
      ),
    );
  }
}
