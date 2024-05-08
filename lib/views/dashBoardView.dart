// ignore_for_file: file_names

import 'package:dash_board_responsive/widgets/adaptive_layout_widget.dart';
import 'package:dash_board_responsive/widgets/desktop_layoyt.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobile: (context) => const SizedBox(),
        tap: (context) => const SizedBox(),
        desktop: (context) => const DesktopLayout(),
      ),
    );
  }
}
