import 'package:dash_board_responsive/utils/app_style.dart';
import 'package:dash_board_responsive/widgetsExpensesAndQuickInvoice/customTextField.dart';
import 'package:flutter/cupertino.dart';

class CustomTitleTextFeild extends StatelessWidget {
  const CustomTitleTextFeild(
      {super.key, required this.title, required this.hint});
  final String title, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 10,
        ),
        CustomTextField(
          hintText: hint,
        ),
      ],
    );
  }
}
