// ignore_for_file: file_names

import 'package:dash_board_responsive/models/item_model.dart';
import 'package:dash_board_responsive/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActivateItem extends StatelessWidget {
  const ActivateItem({super.key, required this.itemModel});
  final ItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: SvgPicture.asset(itemModel.imageIcon),
        title: Text(
          itemModel.title,
          style: AppStyles.styleBold16(context),
        ),
        trailing: Container(
          color: const Color(0xFF4EB7F2),
          width: 10,
        ));
  }
}

class InActivateItem extends StatelessWidget {
  const InActivateItem({super.key, required this.itemModel});
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
