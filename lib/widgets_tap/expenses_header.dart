import 'package:dash_board_responsive/utils/app_style.dart';
import 'package:dash_board_responsive/widgets_tap/range_expenses.dart';
import 'package:flutter/material.dart';

class ExpensesHeader extends StatelessWidget {
  const ExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Text(
            'All Expenses',
            style: AppStyles.styleSemiBold20(context),
          ),
          const Spacer(),
          const RangeExpenser(),
        ],
      ),
    );
  }
}
