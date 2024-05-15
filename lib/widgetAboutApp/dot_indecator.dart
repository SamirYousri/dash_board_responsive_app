import 'package:dash_board_responsive/widgetAboutApp/dot.dart';
import 'package:flutter/material.dart';

class DotIndecator extends StatelessWidget {
  const DotIndecator({super.key, required this.currentPageIndex});
  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 6),
          child: DotAnimaTion(
            isActive: index == currentPageIndex,
          ),
        ),
      ),
    );
  }
}
