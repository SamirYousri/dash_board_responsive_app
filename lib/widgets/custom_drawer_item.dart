import 'package:dash_board_responsive/models/item_model.dart';
import 'package:dash_board_responsive/widgets/activate&inactivate.dart';
import 'package:flutter/material.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem(
      {super.key, required this.itemModel, required this.isActive});
  final ItemModel itemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActivateItem(itemModel: itemModel)
        : InActivateItem(itemModel: itemModel);
  }
}
