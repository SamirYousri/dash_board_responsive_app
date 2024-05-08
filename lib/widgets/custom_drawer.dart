import 'package:dash_board_responsive/models/item_model.dart';
import 'package:dash_board_responsive/utils/app_images.dart';
import 'package:dash_board_responsive/widgets/custom_drawer_item.dart';
import 'package:dash_board_responsive/widgets/custom_info_list_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  final List<ItemModel> itemList = const [
    ItemModel(title: 'Dash Board', imageIcon: Assets.imagesDashboard),
    ItemModel(title: 'My Transaction', imageIcon: Assets.imagesMyTransctions),
    ItemModel(title: 'Statistics', imageIcon: Assets.imagesStatistics),
    ItemModel(title: 'Wallet Account', imageIcon: Assets.imagesWalletAccount),
    ItemModel(title: 'My Transaction', imageIcon: Assets.imagesMyTransctions),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const CustomInfoListTile(
            image: Assets.imagesAvatar3,
            subTitle: 'semoo@gmail.com',
            title: 'Samir Yousri',
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: itemList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: CustomDrawerItem(
                  itemModel: itemList[index],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
