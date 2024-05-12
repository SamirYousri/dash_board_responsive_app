// ignore_for_file: file_names, avoid_unnecessary_containers

import 'package:dash_board_responsive/models/espenses_model.dart';
import 'package:dash_board_responsive/utils/app_images.dart';
import 'package:dash_board_responsive/widgets_tap/expenses_header.dart';
import 'package:dash_board_responsive/widgets_tap/itemexpenses.dart';
import 'package:flutter/material.dart';

class CustomSection1 extends StatelessWidget {
  const CustomSection1({super.key});

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
          children: [
            ExpensesHeader(),
            Row(
              children: [
                Expanded(
                  child: ExpensesItem(
                    expensesModel: ExpensesModel(
                        image: Assets.imagesIncome,
                        title: 'Balance',
                        date: 'April 2022',
                        price: r'$20.129'),
                  ),
                ),
                Expanded(
                  child: ExpensesItem(
                    expensesModel: ExpensesModel(
                        image: Assets.imagesIncome,
                        title: 'Income',
                        date: 'April 2022',
                        price: r'$20.129'),
                  ),
                ),
                Expanded(
                  child: ExpensesItem(
                    expensesModel: ExpensesModel(
                        image: Assets.imagesIncome,
                        title: 'Expenses',
                        date: 'April 2022',
                        price: r'$20.129'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
