// ignore_for_file: file_names

import 'package:dash_board_responsive/widgetAboutApp/custom_about_section1.dart';
import 'package:dash_board_responsive/widgetAboutApp/custom_about_section2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomAboutApp extends StatelessWidget {
  const CustomAboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAboutSection1(),
        SizedBox(
          height: 10,
        ),
        CustomAboutSection2(),
      ],
    );
  }
}
