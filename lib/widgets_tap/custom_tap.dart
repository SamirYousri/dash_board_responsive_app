import 'package:dash_board_responsive/widgets_tap/customSection1.dart';
import 'package:dash_board_responsive/widgets_tap/customsection2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTap extends StatelessWidget {
  const CustomTap({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          CustomSection1(),
          SizedBox(
            height: 10,
          ),
          CustomSection2(),
        ],
      ),
    );
  }
}
