import 'package:dash_board_responsive/models/espenses_model.dart';
import 'package:dash_board_responsive/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem({super.key, required this.expensesModel});
  final ExpensesModel expensesModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: const Color.fromARGB(255, 223, 219, 219),
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: SvgPicture.asset(expensesModel.image),
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.keyboard_arrow_right_outlined,
                ),
              ],
            ),
            const SizedBox(
              height: 34,
            ),
            Text(
              expensesModel.title,
              style: AppStyles.styleMedium16(context),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              expensesModel.date,
              style: AppStyles.styleRegular14(context),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              expensesModel.price,
              style: AppStyles.styleSemiBold24(context),
            ),
          ],
        ),
      ),
    );
  }
}
