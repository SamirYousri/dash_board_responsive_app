import 'package:dash_board_responsive/utils/app_style.dart';
import 'package:dash_board_responsive/widgetAboutApp/header_transaction.dart';
import 'package:dash_board_responsive/widgetAboutApp/transaction_listView.dart';
import 'package:flutter/material.dart';

class TransactionSection extends StatelessWidget {
  const TransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeaderTransaction(),
        const SizedBox(
          height: 10,
        ),
        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16(context).copyWith(
            color: Colors.grey[400],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const TransactionListView(),
      ],
    );
  }
}
