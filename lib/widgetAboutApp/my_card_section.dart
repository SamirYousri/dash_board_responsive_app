import 'package:dash_board_responsive/utils/app_style.dart';
import 'package:dash_board_responsive/widgetAboutApp/card_page_view.dart';
import 'package:dash_board_responsive/widgetAboutApp/dot_indecator.dart';
import 'package:flutter/material.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

late PageController pageController;
int currentPageIndex = 0;

class _MyCardSectionState extends State<MyCardSection> {
  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Card',
          style: AppStyles.styleSemiBold20(context),
        ),
        const SizedBox(
          height: 20,
        ),
        CardPageView(
          pageController: pageController,
        ),
        const SizedBox(
          height: 20,
        ),
        DotIndecator(
          currentPageIndex: currentPageIndex,
        ),
      ],
    );
  }
}
