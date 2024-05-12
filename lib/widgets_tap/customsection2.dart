import 'package:dash_board_responsive/widgets_tap/custom_scrol_horizontal.dart';
import 'package:dash_board_responsive/widgets_tap/quick_invoice_header.dart';
import 'package:dash_board_responsive/widgets_tap/section2.2.dart';
import 'package:flutter/material.dart';

class CustomSection2 extends StatelessWidget {
  const CustomSection2({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: const Column(
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
