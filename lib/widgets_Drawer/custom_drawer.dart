import 'package:dash_board_responsive/models/item_model.dart';
import 'package:dash_board_responsive/utils/app_images.dart';
import 'package:dash_board_responsive/widgets_Drawer/activate&inactivate.dart';
import 'package:dash_board_responsive/widgets_Drawer/custom_info_list_tile.dart';
import 'package:dash_board_responsive/widgets_Drawer/custom_list_item.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
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
                  child: SizedBox(
                    height: 20,
                  ),
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
