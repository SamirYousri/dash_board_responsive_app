// ignore_for_file: camel_case_types

import 'package:dash_board_responsive/widgets_tap/custom_button.dart';
import 'package:dash_board_responsive/widgets_tap/custom_title_text_feild.dart';
import 'package:flutter/material.dart';

class Section2_2 extends StatelessWidget {
  const Section2_2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTitleTextFeild(
                title: 'Customer Name',
                hint: 'Type Customer Name',
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: CustomTitleTextFeild(
                title: 'Customer Email',
                hint: 'Type Customer Name',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: CustomTitleTextFeild(
                title: 'Item Name',
                hint: 'Type Customer Name',
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: CustomTitleTextFeild(
                title: 'Item Mount',
                hint: 'Type Customer Name',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                textColor: Color(0xFF4EB7F2),
                text: 'Add more details',
                backgroundcolor: Colors.transparent,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(child: CustomButton(text: 'Send Money')),
          ],
        )
      ],
    );
  }
}
