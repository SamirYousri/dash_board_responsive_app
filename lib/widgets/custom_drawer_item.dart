import 'package:dash_board_responsive/models/item_model.dart';
import 'package:dash_board_responsive/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.itemModel});
  final ItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(itemModel.imageIcon),
      title: Text(
        itemModel.title,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
