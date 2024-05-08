import 'package:dash_board_responsive/utils/app_images.dart';
import 'package:dash_board_responsive/widgets/custom_info_list_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          CustomInfoListTile(
            image: Assets.imagesAvatar3,
            subTitle: 'semoo@gmail.com',
            title: 'Samir Yousri',
          ),
        ],
      ),
    );
  }
}
