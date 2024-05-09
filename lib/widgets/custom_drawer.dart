import 'package:dash_board_responsive/models/item_model.dart';
import 'package:dash_board_responsive/utils/app_images.dart';
import 'package:dash_board_responsive/widgets/activate&inactivate.dart';
import 'package:dash_board_responsive/widgets/custom_info_list_tile.dart';
import 'package:dash_board_responsive/widgets/custom_list_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CustomInfoListTile(
              image: Assets.imagesAvatar3,
              subTitle: 'semoo@gmail.com',
              title: 'Samir Yousri',
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          CustomListViewItem(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(),
                ),
                InActivateItem(
                  itemModel: ItemModel(
                    title: 'Setting System',
                    imageIcon: Assets.imagesSettings,
                  ),
                ),
                InActivateItem(
                  itemModel: ItemModel(
                    title: 'Logout Account',
                    imageIcon: Assets.imagesLogout,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
