import 'package:dash_board_responsive/utils/app_style.dart';
import 'package:dash_board_responsive/widgetsExpensesAndQuickInvoice/range_expenses.dart';
import 'package:flutter/material.dart';

class HeaderIncome extends StatelessWidget {
  const HeaderIncome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Income',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        const RangeExpenser(),
      ],
    );
  }
}
