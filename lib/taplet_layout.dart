import 'package:dash_board_responsive/mobile_layout.dart';
import 'package:dash_board_responsive/widgets_Drawer/custom_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        Expanded(
          flex: 3,
          child: MobileLayout(),
        ),
      ],
    );
  }
}
