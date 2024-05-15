import 'package:dash_board_responsive/utils/app_style.dart';
import 'package:flutter/material.dart';

class HeaderTransaction extends StatelessWidget {
  const HeaderTransaction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        Text(
          'See all',
          style: AppStyles.styleRegular16(context).copyWith(
            color: const Color(0xFF4EB7F2),
          ),
        )
      ],
    );
  }
}
