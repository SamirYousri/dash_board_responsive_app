import 'package:dash_board_responsive/utils/app_style.dart';
import 'package:dash_board_responsive/widgetsExpensesAndQuickInvoice/range_expenses.dart';
import 'package:flutter/material.dart';

class ExpensesHeader extends StatelessWidget {
  const ExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        const RangeExpenser(),
      ],
    );
  }
}
