import 'package:dash_board_responsive/models/transaction_model.dart';
import 'package:dash_board_responsive/utils/app_style.dart';
import 'package:flutter/material.dart';

class ItemTransaction extends StatelessWidget {
  const ItemTransaction({super.key, required this.transactionmodel});
  final TransactionModel transactionmodel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.grey[200],
      child: ListTile(
        title: Text(
          transactionmodel.title,
          style: AppStyles.styleBold16(context)
              .copyWith(color: const Color(0xFF064060)),
        ),
        subtitle: Text(
          transactionmodel.date,
          style: AppStyles.styleRegular16(context).copyWith(color: Colors.grey),
        ),
        trailing: Text(
          transactionmodel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: transactionmodel.isWithdrawal ? Colors.red : Colors.green,
          ),
        ),
      ),
    );
  }
}
