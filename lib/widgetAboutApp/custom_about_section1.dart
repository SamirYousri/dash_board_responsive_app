import 'package:dash_board_responsive/widgetAboutApp/my_card_section.dart';
import 'package:dash_board_responsive/widgetAboutApp/transaction_section.dart';
import 'package:flutter/material.dart';

class CustomAboutSection1 extends StatelessWidget {
  const CustomAboutSection1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        right: 16,
      ),
      child: Card(
        elevation: 0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const MyCardSection(),
              Divider(
                height: 40,
                color: Colors.grey[100],
              ),
              const TransactionSection(),
            ],
          ),
        ),
      ),
    );
  }
}
