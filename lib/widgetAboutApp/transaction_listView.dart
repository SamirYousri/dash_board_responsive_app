// ignore_for_file: file_names

import 'package:dash_board_responsive/models/transaction_model.dart';
import 'package:dash_board_responsive/widgetAboutApp/item_transaction.dart';
import 'package:flutter/material.dart';

class TransactionListView extends StatelessWidget {
  const TransactionListView({super.key});

  static const List<TransactionModel> itemList = [
    TransactionModel(
      title: 'Cash witdrawal',
      date: '13 April 2022',
      amount: r'$20,129',
      isWithdrawal: true,
    ),
    TransactionModel(
      title: 'Landing page project',
      date: '13 April 2022',
      amount: r'$2,129',
      isWithdrawal: false,
    ),
    TransactionModel(
      title: 'June mobile app project',
      date: '13 April 2022',
      amount: r'$20,129',
      isWithdrawal: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: itemList.length,
      itemBuilder: (context, index) {
        return ItemTransaction(
          transactionmodel: itemList[index],
        );
      },
    );
  }
}
