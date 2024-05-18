// ignore_for_file: file_names

import 'package:dash_board_responsive/mobile_layout.dart';
import 'package:dash_board_responsive/taplet_layout.dart';
import 'package:dash_board_responsive/widgets_Drawer/adaptive_layout_widget.dart';
import 'package:dash_board_responsive/desktop_layout.dart';
import 'package:dash_board_responsive/widgets_Drawer/custom_drawer.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.grey[200],
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xFF4EB7F2),
              // title: IconButton(
              //   onPressed: () {
              //     scaffoldKey.currentState!.openDrawer();
              //   },
              //   icon: const Icon(Icons.abc),
              // ),
            )
          : null,
      drawer:
          MediaQuery.sizeOf(context).width < 800 ? const CustomDrawer() : null,
      body: AdaptiveLayout(
        mobile: (context) => const MobileLayout(),
        tap: (context) => const TabletLayout(),
        desktop: (context) => const DesktopLayout(),
      ),
    );
  }
}
