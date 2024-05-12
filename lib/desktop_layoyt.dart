import 'package:dash_board_responsive/widgets_Drawer/custom_drawer.dart';
import 'package:dash_board_responsive/widgets_tap/custom_tap.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: CustomDrawer(),
        ),
        Expanded(
          flex: 3,
          child: CustomTap(),
        ),
      ],
    );
  }
}
