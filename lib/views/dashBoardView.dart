// ignore_for_file: file_names

import 'package:dash_board_responsive/taplet_layout.dart';
import 'package:dash_board_responsive/widgets_Drawer/adaptive_layout_widget.dart';
import 'package:dash_board_responsive/desktop_layout.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: AdaptiveLayout(
        mobile: (context) => const SizedBox(),
        tap: (context) => const TabletLayout(),
        desktop: (context) => const DesktopLayout(),
      ),
    );
  }
}
