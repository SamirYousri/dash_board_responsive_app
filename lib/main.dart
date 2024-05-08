import 'package:dash_board_responsive/views/dashBoardView.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DashBoardResponsive());
}

class DashBoardResponsive extends StatelessWidget {
  const DashBoardResponsive({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoardView(),
    );
  }
}
