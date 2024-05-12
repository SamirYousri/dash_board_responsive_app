import 'package:dash_board_responsive/utils/app_style.dart';
import 'package:flutter/material.dart';

class RangeExpenser extends StatelessWidget {
  const RangeExpenser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: const Color.fromARGB(255, 223, 219, 219),
        ),
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Text(
            'Monthly',
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(Icons.keyboard_arrow_down_outlined,
              color: Color(0xFF064060)),
        ],
      ),
    );
  }
}
