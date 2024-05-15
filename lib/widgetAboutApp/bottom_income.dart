import 'package:dash_board_responsive/models/item_details_model.dart';
import 'package:dash_board_responsive/utils/app_style.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({
    super.key,
    required this.itemDetailsModel,
  });
  final ItemDetailsModel itemDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 12,
        width: 12,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: itemDetailsModel.color,
        ),
      ),
      title: Text(
        itemDetailsModel.title,
        style: AppStyles.styleMedium16(context),
      ),
      trailing: Text(
        itemDetailsModel.ratio,
        style: AppStyles.styleBold16(context),
      ),
    );
  }
}
