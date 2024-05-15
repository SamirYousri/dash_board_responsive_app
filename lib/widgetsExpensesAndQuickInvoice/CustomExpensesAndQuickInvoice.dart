// ignore_for_file: file_names

import 'package:dash_board_responsive/widgetsExpensesAndQuickInvoice/customSection1.dart';
import 'package:dash_board_responsive/widgetsExpensesAndQuickInvoice/customsection2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomExpensesAndQuickInvoice extends StatelessWidget {
  const CustomExpensesAndQuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                CustomSection1(),
                SizedBox(
                  height: 10,
                ),
                CustomSection2(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
