import 'package:dash_board_responsive/widgetAboutApp/heder_income.dart';
import 'package:dash_board_responsive/widgetAboutApp/income_chart.dart';
import 'package:dash_board_responsive/widgetAboutApp/item_details_listView.dart';
import 'package:flutter/material.dart';

class CustomAboutSection2 extends StatelessWidget {
  const CustomAboutSection2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        right: 16,
        bottom: 16,
      ),
      child: Card(
        color: Colors.white,
        elevation: 0,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              HeaderIncome(),
              Row(
                children: [
                  Expanded(
                    child: IncomeChart(),
                  ),
                  Expanded(
                    child: ItemDetailsListView(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
