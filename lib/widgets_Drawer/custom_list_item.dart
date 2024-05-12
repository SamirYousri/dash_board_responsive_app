import 'package:dash_board_responsive/models/item_model.dart';
import 'package:dash_board_responsive/utils/app_images.dart';
import 'package:dash_board_responsive/widgets_Drawer/custom_drawer_item.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatefulWidget {
  const CustomListViewItem({super.key});

  @override
  State<CustomListViewItem> createState() => _CustomListViewItemState();
}

class _CustomListViewItemState extends State<CustomListViewItem> {
  final List<ItemModel> itemList = const [
    ItemModel(title: 'Dash Board', imageIcon: Assets.imagesDashboard),
    ItemModel(title: 'My Transaction', imageIcon: Assets.imagesMyTransctions),
    ItemModel(title: 'Statistics', imageIcon: Assets.imagesStatistics),
    ItemModel(title: 'Wallet Account', imageIcon: Assets.imagesWalletAccount),
    ItemModel(title: 'My Investments', imageIcon: Assets.imagesMyInvestments),
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: itemList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: CustomDrawerItem(
              itemModel: itemList[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
