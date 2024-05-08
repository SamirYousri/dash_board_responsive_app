// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobile,
      required this.tap,
      required this.desktop});
  final WidgetBuilder mobile, tap, desktop;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobile(context);
        } else if (constraints.maxWidth < 900) {
          return tap(context);
        } else {
          return desktop(context);
        }
      },
    );
  }
}
