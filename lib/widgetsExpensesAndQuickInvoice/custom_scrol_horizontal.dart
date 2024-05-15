import 'package:dash_board_responsive/utils/app_images.dart';
import 'package:dash_board_responsive/utils/app_style.dart';
import 'package:dash_board_responsive/widgets_Drawer/custom_info_list_tile.dart';
import 'package:flutter/cupertino.dart';

class CustomScrolHorizontal extends StatelessWidget {
  const CustomScrolHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16(context),
        ),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              IntrinsicWidth(
                child: CustomInfoListTile(
                  image: Assets.imagesAvatar1,
                  title: 'Samir Yousri',
                  subTitle: 'samiryosry@gmail.com',
                ),
              ),
              IntrinsicWidth(
                child: CustomInfoListTile(
                  image: Assets.imagesAvatar2,
                  title: 'Mohamed Ahmed',
                  subTitle: 'mohamedaahmed@gmail.com',
                ),
              ),
              IntrinsicWidth(
                child: CustomInfoListTile(
                  image: Assets.imagesAvatar1,
                  title: 'Ali Sameh',
                  subTitle: 'alisameh@gmail.com',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
